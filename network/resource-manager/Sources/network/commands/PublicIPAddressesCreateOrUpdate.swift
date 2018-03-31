import Foundation
import azureSwiftRuntime
public protocol PublicIPAddressesCreateOrUpdate {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var publicIpAddressName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var parameters :  PublicIPAddressProtocol? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (PublicIPAddressProtocol?, Error?) -> Void)
}

extension Commands.PublicIPAddresses {
// CreateOrUpdate creates or updates a static or dynamic public IP address. This method may poll for completion.
// Polling can be canceled by passing the cancel channel argument. The channel will be used to cancel polling and any
// outstanding HTTP requests.
    internal class CreateOrUpdateCommand : BaseCommand, PublicIPAddressesCreateOrUpdate {
        public var resourceGroupName : String
        public var publicIpAddressName : String
        public var subscriptionId : String
        public var apiVersion = "2018-01-01"
    public var parameters :  PublicIPAddressProtocol?

        public init(resourceGroupName: String, publicIpAddressName: String, subscriptionId: String, parameters: PublicIPAddressProtocol) {
            self.resourceGroupName = resourceGroupName
            self.publicIpAddressName = publicIpAddressName
            self.subscriptionId = subscriptionId
            self.parameters = parameters
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = true
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPAddresses/{publicIpAddressName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{publicIpAddressName}"] = String(describing: self.publicIpAddressName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = parameters

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(parameters as? PublicIPAddressData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(PublicIPAddressData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (PublicIPAddressProtocol?, Error?) -> Void) {
            client.executeAsyncLRO(command: self) {
                (result: PublicIPAddressData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
