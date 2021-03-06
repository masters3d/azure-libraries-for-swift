import Foundation
import azureSwiftRuntime
public protocol NamespacesCreateOrUpdate  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var namespaceName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var parameters :  RelayNamespaceProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (RelayNamespaceProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.Namespaces {
// CreateOrUpdate create Azure Relay namespace. This method may poll for completion. Polling can be canceled by passing
// the cancel channel argument. The channel will be used to cancel polling and any outstanding HTTP requests.
    internal class CreateOrUpdateCommand : BaseCommand, NamespacesCreateOrUpdate {
        public var resourceGroupName : String
        public var namespaceName : String
        public var subscriptionId : String
        public var apiVersion = "2017-04-01"
    public var parameters :  RelayNamespaceProtocol?

        public init(resourceGroupName: String, namespaceName: String, subscriptionId: String, parameters: RelayNamespaceProtocol) {
            self.resourceGroupName = resourceGroupName
            self.namespaceName = namespaceName
            self.subscriptionId = subscriptionId
            self.parameters = parameters
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = true
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Relay/namespaces/{namespaceName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{namespaceName}"] = String(describing: self.namespaceName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = parameters

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(parameters as? RelayNamespaceData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(RelayNamespaceData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (RelayNamespaceProtocol?, Error?) -> Void) -> Void {
            client.executeAsyncLRO(command: self) {
                (result: RelayNamespaceData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
