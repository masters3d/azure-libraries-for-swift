import Foundation
import azureSwiftRuntime
public protocol ScheduleCreateOrUpdate {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var automationAccountName : String { get set }
    var scheduleName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var parameters :  ScheduleCreateOrUpdateParametersProtocol? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ScheduleProtocol?, Error?) -> Void)
}

extension Commands.Schedule {
// CreateOrUpdate create a schedule.
    internal class CreateOrUpdateCommand : BaseCommand, ScheduleCreateOrUpdate {
        public var resourceGroupName : String
        public var automationAccountName : String
        public var scheduleName : String
        public var subscriptionId : String
        public var apiVersion = "2015-10-31"
    public var parameters :  ScheduleCreateOrUpdateParametersProtocol?

        public init(resourceGroupName: String, automationAccountName: String, scheduleName: String, subscriptionId: String, parameters: ScheduleCreateOrUpdateParametersProtocol) {
            self.resourceGroupName = resourceGroupName
            self.automationAccountName = automationAccountName
            self.scheduleName = scheduleName
            self.subscriptionId = subscriptionId
            self.parameters = parameters
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/schedules/{scheduleName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{automationAccountName}"] = String(describing: self.automationAccountName)
            self.pathParameters["{scheduleName}"] = String(describing: self.scheduleName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = parameters

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(parameters as? ScheduleCreateOrUpdateParametersData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ScheduleData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ScheduleProtocol?, Error?) -> Void) {
            client.executeAsync(command: self) {
                (result: ScheduleData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
