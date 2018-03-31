import Foundation
import azureSwiftRuntime
public protocol WebAppsCreateDeploymentSlot {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var name : String { get set }
    var id : String { get set }
    var slot : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var deployment :  DeploymentProtocol? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (DeploymentProtocol?, Error?) -> Void)
}

extension Commands.WebApps {
// CreateDeploymentSlot create a deployment for an app, or a deployment slot.
    internal class CreateDeploymentSlotCommand : BaseCommand, WebAppsCreateDeploymentSlot {
        public var resourceGroupName : String
        public var name : String
        public var id : String
        public var slot : String
        public var subscriptionId : String
        public var apiVersion = "2016-08-01"
    public var deployment :  DeploymentProtocol?

        public init(resourceGroupName: String, name: String, id: String, slot: String, subscriptionId: String, deployment: DeploymentProtocol) {
            self.resourceGroupName = resourceGroupName
            self.name = name
            self.id = id
            self.slot = slot
            self.subscriptionId = subscriptionId
            self.deployment = deployment
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/deployments/{id}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{name}"] = String(describing: self.name)
            self.pathParameters["{id}"] = String(describing: self.id)
            self.pathParameters["{slot}"] = String(describing: self.slot)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = deployment

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(deployment as? DeploymentData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(DeploymentData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (DeploymentProtocol?, Error?) -> Void) {
            client.executeAsync(command: self) {
                (result: DeploymentData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
