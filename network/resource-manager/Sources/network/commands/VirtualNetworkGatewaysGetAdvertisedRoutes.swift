import Foundation
import azureSwiftRuntime
public protocol VirtualNetworkGatewaysGetAdvertisedRoutes  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var virtualNetworkGatewayName : String { get set }
    var subscriptionId : String { get set }
    var peer : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (GatewayRouteListResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.VirtualNetworkGateways {
// GetAdvertisedRoutes this operation retrieves a list of routes the virtual network gateway is advertising to the
// specified peer. This method may poll for completion. Polling can be canceled by passing the cancel channel argument.
// The channel will be used to cancel polling and any outstanding HTTP requests.
    internal class GetAdvertisedRoutesCommand : BaseCommand, VirtualNetworkGatewaysGetAdvertisedRoutes {
        public var resourceGroupName : String
        public var virtualNetworkGatewayName : String
        public var subscriptionId : String
        public var peer : String
        public var apiVersion = "2018-01-01"

        public init(resourceGroupName: String, virtualNetworkGatewayName: String, subscriptionId: String, peer: String) {
            self.resourceGroupName = resourceGroupName
            self.virtualNetworkGatewayName = virtualNetworkGatewayName
            self.subscriptionId = subscriptionId
            self.peer = peer
            super.init()
            self.method = "Post"
            self.isLongRunningOperation = true
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkGateways/{virtualNetworkGatewayName}/getAdvertisedRoutes"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{virtualNetworkGatewayName}"] = String(describing: self.virtualNetworkGatewayName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["peer"] = String(describing: self.peer)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(GatewayRouteListResultData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (GatewayRouteListResultProtocol?, Error?) -> Void) -> Void {
            client.executeAsyncLRO(command: self) {
                (result: GatewayRouteListResultData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
