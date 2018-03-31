import Foundation
import azureSwiftRuntime
public protocol WebAppsDeleteDomainOwnershipIdentifier  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var name : String { get set }
    var domainOwnershipIdentifierName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (Error?) -> Void) -> Void;
}

extension Commands.WebApps {
// DeleteDomainOwnershipIdentifier deletes a domain ownership identifier for a web app.
    internal class DeleteDomainOwnershipIdentifierCommand : BaseCommand, WebAppsDeleteDomainOwnershipIdentifier {
        public var resourceGroupName : String
        public var name : String
        public var domainOwnershipIdentifierName : String
        public var subscriptionId : String
        public var apiVersion = "2016-08-01"

        public init(resourceGroupName: String, name: String, domainOwnershipIdentifierName: String, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.name = name
            self.domainOwnershipIdentifierName = domainOwnershipIdentifierName
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Delete"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/domainOwnershipIdentifiers/{domainOwnershipIdentifierName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{name}"] = String(describing: self.name)
            self.pathParameters["{domainOwnershipIdentifierName}"] = String(describing: self.domainOwnershipIdentifierName)
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
