import Foundation
import azureSwiftRuntime
public protocol StorageAccountsAdd  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var accountName : String { get set }
    var storageAccountName : String { get set }
    var apiVersion : String { get set }
    var parameters :  AddStorageAccountParametersProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (Error?) -> Void) -> Void;
}

extension Commands.StorageAccounts {
// Add updates the specified Data Lake Analytics account to add an Azure Storage account.
    internal class AddCommand : BaseCommand, StorageAccountsAdd {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var accountName : String
        public var storageAccountName : String
        public var apiVersion = "2016-11-01"
    public var parameters :  AddStorageAccountParametersProtocol?

        public init(subscriptionId: String, resourceGroupName: String, accountName: String, storageAccountName: String, parameters: AddStorageAccountParametersProtocol) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.accountName = accountName
            self.storageAccountName = storageAccountName
            self.parameters = parameters
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/storageAccounts/{storageAccountName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{accountName}"] = String(describing: self.accountName)
            self.pathParameters["{storageAccountName}"] = String(describing: self.storageAccountName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = parameters

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(parameters as? AddStorageAccountParametersData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
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
