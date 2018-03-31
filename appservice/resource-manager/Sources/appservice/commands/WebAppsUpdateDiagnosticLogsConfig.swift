import Foundation
import azureSwiftRuntime
public protocol WebAppsUpdateDiagnosticLogsConfig  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var name : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var siteLogsConfig :  SiteLogsConfigProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (SiteLogsConfigProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.WebApps {
// UpdateDiagnosticLogsConfig updates the logging configuration of an app.
    internal class UpdateDiagnosticLogsConfigCommand : BaseCommand, WebAppsUpdateDiagnosticLogsConfig {
        public var resourceGroupName : String
        public var name : String
        public var subscriptionId : String
        public var apiVersion = "2016-08-01"
    public var siteLogsConfig :  SiteLogsConfigProtocol?

        public init(resourceGroupName: String, name: String, subscriptionId: String, siteLogsConfig: SiteLogsConfigProtocol) {
            self.resourceGroupName = resourceGroupName
            self.name = name
            self.subscriptionId = subscriptionId
            self.siteLogsConfig = siteLogsConfig
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/config/logs"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{name}"] = String(describing: self.name)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = siteLogsConfig

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(siteLogsConfig as? SiteLogsConfigData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(SiteLogsConfigData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (SiteLogsConfigProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: SiteLogsConfigData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
