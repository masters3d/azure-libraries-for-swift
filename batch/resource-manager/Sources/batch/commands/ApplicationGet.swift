import Foundation
import azureSwiftRuntime
public protocol ApplicationGet {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var accountName : String { get set }
    var applicationId : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ApplicationProtocol?, Error?) -> Void)
}

extension Commands.Application {
// Get gets information about the specified application.
    internal class GetCommand : BaseCommand, ApplicationGet {
        public var resourceGroupName : String
        public var accountName : String
        public var applicationId : String
        public var subscriptionId : String
        public var apiVersion = "2017-09-01"

        public init(resourceGroupName: String, accountName: String, applicationId: String, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.accountName = accountName
            self.applicationId = applicationId
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationId}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{accountName}"] = String(describing: self.accountName)
            self.pathParameters["{applicationId}"] = String(describing: self.applicationId)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ApplicationData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ApplicationProtocol?, Error?) -> Void) {
            client.executeAsync(command: self) {
                (result: ApplicationData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
