import Foundation
import azureSwiftRuntime
public protocol RoutesDelete {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var routeTableName : String { get set }
    var routeName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (Error?) -> Void)
}

extension Commands.Routes {
// Delete deletes the specified route from a route table. This method may poll for completion. Polling can be canceled
// by passing the cancel channel argument. The channel will be used to cancel polling and any outstanding HTTP
// requests.
    internal class DeleteCommand : BaseCommand, RoutesDelete {
        public var resourceGroupName : String
        public var routeTableName : String
        public var routeName : String
        public var subscriptionId : String
        public var apiVersion = "2018-01-01"

        public init(resourceGroupName: String, routeTableName: String, routeName: String, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.routeTableName = routeTableName
            self.routeName = routeName
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Delete"
            self.isLongRunningOperation = true
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName}/routes/{routeName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{routeTableName}"] = String(describing: self.routeTableName)
            self.pathParameters["{routeName}"] = String(describing: self.routeName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) {
            client.executeAsyncLRO(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }
}
