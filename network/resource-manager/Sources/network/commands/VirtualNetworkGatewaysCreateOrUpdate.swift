import Foundation
import azureSwiftRuntime
public protocol VirtualNetworkGatewaysCreateOrUpdate  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var virtualNetworkGatewayName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var parameters :  VirtualNetworkGatewayProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (VirtualNetworkGatewayProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.VirtualNetworkGateways {
// CreateOrUpdate creates or updates a virtual network gateway in the specified resource group. This method may poll
// for completion. Polling can be canceled by passing the cancel channel argument. The channel will be used to cancel
// polling and any outstanding HTTP requests.
    internal class CreateOrUpdateCommand : BaseCommand, VirtualNetworkGatewaysCreateOrUpdate {
        public var resourceGroupName : String
        public var virtualNetworkGatewayName : String
        public var subscriptionId : String
        public var apiVersion = "2018-01-01"
    public var parameters :  VirtualNetworkGatewayProtocol?

        public init(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String, parameters: VirtualNetworkGatewayProtocol) {
            self.resourceGroupName = resourceGroupName
            self.virtualNetworkGatewayName = virtualNetworkGatewayName
            self.subscriptionId = subscriptionId
            self.parameters = parameters
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = true
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkGateways/{virtualNetworkGatewayName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{virtualNetworkGatewayName}"] = String(describing: self.virtualNetworkGatewayName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = parameters

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(parameters as? VirtualNetworkGatewayData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(VirtualNetworkGatewayData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (VirtualNetworkGatewayProtocol?, Error?) -> Void) -> Void {
            client.executeAsyncLRO(command: self) {
                (result: VirtualNetworkGatewayData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
