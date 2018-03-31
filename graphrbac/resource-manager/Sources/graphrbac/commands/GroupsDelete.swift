import Foundation
import azureSwiftRuntime
public protocol GroupsDelete  {
    var headerParameters: [String: String] { get set }
    var objectId : String { get set }
    var tenantID : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (Error?) -> Void) -> Void;
}

extension Commands.Groups {
// Delete delete a group from the directory.
    internal class DeleteCommand : BaseCommand, GroupsDelete {
        public var objectId : String
        public var tenantID : String
        public var apiVersion = "1.6"

        public init(objectId: String, tenantID: String) {
            self.objectId = objectId
            self.tenantID = tenantID
            super.init()
            self.method = "Delete"
            self.isLongRunningOperation = false
            self.path = "/{tenantID}/groups/{objectId}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{objectId}"] = String(describing: self.objectId)
            self.pathParameters["{tenantID}"] = String(describing: self.tenantID)
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
