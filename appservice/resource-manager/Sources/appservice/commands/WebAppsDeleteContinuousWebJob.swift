import Foundation
import azureSwiftRuntime
public protocol WebAppsDeleteContinuousWebJob {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var name : String { get set }
    var webJobName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (Error?) -> Void)
}

extension Commands.WebApps {
// DeleteContinuousWebJob delete a continuous web job by its ID for an app, or a deployment slot.
    internal class DeleteContinuousWebJobCommand : BaseCommand, WebAppsDeleteContinuousWebJob {
        public var resourceGroupName : String
        public var name : String
        public var webJobName : String
        public var subscriptionId : String
        public var apiVersion = "2016-08-01"

        public init(resourceGroupName: String, name: String, webJobName: String, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.name = name
            self.webJobName = webJobName
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Delete"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/continuouswebjobs/{webJobName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{name}"] = String(describing: self.name)
            self.pathParameters["{webJobName}"] = String(describing: self.webJobName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }
}
