import Foundation
import azureSwiftRuntime
public protocol WebAppsUpdateAuthSettingsSlot {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var name : String { get set }
    var slot : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var siteAuthSettings :  SiteAuthSettingsProtocol? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (SiteAuthSettingsProtocol?, Error?) -> Void)
}

extension Commands.WebApps {
// UpdateAuthSettingsSlot updates the Authentication / Authorization settings associated with web app.
    internal class UpdateAuthSettingsSlotCommand : BaseCommand, WebAppsUpdateAuthSettingsSlot {
        public var resourceGroupName : String
        public var name : String
        public var slot : String
        public var subscriptionId : String
        public var apiVersion = "2016-08-01"
    public var siteAuthSettings :  SiteAuthSettingsProtocol?

        public init(resourceGroupName: String, name: String, slot: String, subscriptionId: String, siteAuthSettings: SiteAuthSettingsProtocol) {
            self.resourceGroupName = resourceGroupName
            self.name = name
            self.slot = slot
            self.subscriptionId = subscriptionId
            self.siteAuthSettings = siteAuthSettings
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/config/authsettings"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{name}"] = String(describing: self.name)
            self.pathParameters["{slot}"] = String(describing: self.slot)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = siteAuthSettings

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(siteAuthSettings as? SiteAuthSettingsData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(SiteAuthSettingsData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (SiteAuthSettingsProtocol?, Error?) -> Void) {
            client.executeAsync(command: self) {
                (result: SiteAuthSettingsData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
