import Foundation
import azureSwiftRuntime
public protocol WebAppsDeleteHybridConnectionSlot  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var name : String { get set }
    var namespaceName : String { get set }
    var relayName : String { get set }
    var slot : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (Error?) -> Void) -> Void;
}

extension Commands.WebApps {
// DeleteHybridConnectionSlot removes a Hybrid Connection from this site.
    internal class DeleteHybridConnectionSlotCommand : BaseCommand, WebAppsDeleteHybridConnectionSlot {
        public var resourceGroupName : String
        public var name : String
        public var namespaceName : String
        public var relayName : String
        public var slot : String
        public var subscriptionId : String
        public var apiVersion = "2016-08-01"

        public init(resourceGroupName: String, name: String, namespaceName: String, relayName: String, slot: String, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.name = name
            self.namespaceName = namespaceName
            self.relayName = relayName
            self.slot = slot
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Delete"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/hybridConnectionNamespaces/{namespaceName}/relays/{relayName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{name}"] = String(describing: self.name)
            self.pathParameters["{namespaceName}"] = String(describing: self.namespaceName)
            self.pathParameters["{relayName}"] = String(describing: self.relayName)
            self.pathParameters["{slot}"] = String(describing: self.slot)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }
}
