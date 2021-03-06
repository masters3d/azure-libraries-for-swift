import Foundation
import azureSwiftRuntime
public protocol DatabaseAccountsListReadOnlyKeys  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var accountName : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (DatabaseAccountListReadOnlyKeysResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.DatabaseAccounts {
// ListReadOnlyKeys lists the read-only access keys for the specified Azure Cosmos DB database account.
    internal class ListReadOnlyKeysCommand : BaseCommand, DatabaseAccountsListReadOnlyKeys {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var accountName : String
        public var apiVersion = "2015-04-08"

        public init(subscriptionId: String, resourceGroupName: String, accountName: String) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.accountName = accountName
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/readonlykeys"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{accountName}"] = String(describing: self.accountName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(DatabaseAccountListReadOnlyKeysResultData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (DatabaseAccountListReadOnlyKeysResultProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: DatabaseAccountListReadOnlyKeysResultData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
