import Foundation
import azureSwiftRuntime
public protocol ActivityLogAlertsCreateOrUpdate  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var activityLogAlertName : String { get set }
    var apiVersion : String { get set }
    var activityLogAlert :  ActivityLogAlertResourceProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ActivityLogAlertResourceProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.ActivityLogAlerts {
// CreateOrUpdate create a new activity log alert or update an existing one.
    internal class CreateOrUpdateCommand : BaseCommand, ActivityLogAlertsCreateOrUpdate {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var activityLogAlertName : String
        public var apiVersion = "2017-04-01"
    public var activityLogAlert :  ActivityLogAlertResourceProtocol?

        public init(subscriptionId: String, resourceGroupName: String, activityLogAlertName: String, activityLogAlert: ActivityLogAlertResourceProtocol) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.activityLogAlertName = activityLogAlertName
            self.activityLogAlert = activityLogAlert
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/microsoft.insights/activityLogAlerts/{activityLogAlertName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{activityLogAlertName}"] = String(describing: self.activityLogAlertName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = activityLogAlert

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(activityLogAlert as? ActivityLogAlertResourceData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ActivityLogAlertResourceData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ActivityLogAlertResourceProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: ActivityLogAlertResourceData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
