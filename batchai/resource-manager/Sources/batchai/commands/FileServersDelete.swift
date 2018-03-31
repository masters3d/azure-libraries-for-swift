import Foundation
import azureSwiftRuntime
public protocol FileServersDelete {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var fileServerName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (Error?) -> Void)
}

extension Commands.FileServers {
// Delete delete a file Server. This method may poll for completion. Polling can be canceled by passing the cancel
// channel argument. The channel will be used to cancel polling and any outstanding HTTP requests.
    internal class DeleteCommand : BaseCommand, FileServersDelete {
        public var resourceGroupName : String
        public var fileServerName : String
        public var subscriptionId : String
        public var apiVersion = "2017-09-01-preview"

        public init(resourceGroupName: String, fileServerName: String, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.fileServerName = fileServerName
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Delete"
            self.isLongRunningOperation = true
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BatchAI/fileServers/{fileServerName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{fileServerName}"] = String(describing: self.fileServerName)
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
