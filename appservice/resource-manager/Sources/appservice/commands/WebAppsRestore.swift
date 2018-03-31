import Foundation
import azureSwiftRuntime
public protocol WebAppsRestore {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var name : String { get set }
    var backupId : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var request :  RestoreRequestProtocol? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (RestoreResponseProtocol?, Error?) -> Void)
}

extension Commands.WebApps {
// Restore restores a specific backup to another app (or deployment slot, if specified). This method may poll for
// completion. Polling can be canceled by passing the cancel channel argument. The channel will be used to cancel
// polling and any outstanding HTTP requests.
    internal class RestoreCommand : BaseCommand, WebAppsRestore {
        public var resourceGroupName : String
        public var name : String
        public var backupId : String
        public var subscriptionId : String
        public var apiVersion = "2016-08-01"
    public var request :  RestoreRequestProtocol?

        public init(resourceGroupName: String, name: String, backupId: String, subscriptionId: String, request: RestoreRequestProtocol) {
            self.resourceGroupName = resourceGroupName
            self.name = name
            self.backupId = backupId
            self.subscriptionId = subscriptionId
            self.request = request
            super.init()
            self.method = "Post"
            self.isLongRunningOperation = true
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/backups/{backupId}/restore"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{name}"] = String(describing: self.name)
            self.pathParameters["{backupId}"] = String(describing: self.backupId)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = request

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(request as? RestoreRequestData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(RestoreResponseData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (RestoreResponseProtocol?, Error?) -> Void) {
            client.executeAsyncLRO(command: self) {
                (result: RestoreResponseData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
