import Foundation
import azureSwiftRuntime
public protocol NodeGet  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var nodeName : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (NodeResourceProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.Node {
// Get gets a management node.
    internal class GetCommand : BaseCommand, NodeGet {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var nodeName : String
        public var apiVersion = "2016-07-01-preview"

        public init(subscriptionId: String, resourceGroupName: String, nodeName: String) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.nodeName = nodeName
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServerManagement/nodes/{nodeName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{nodeName}"] = String(describing: self.nodeName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(NodeResourceData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (NodeResourceProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: NodeResourceData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
