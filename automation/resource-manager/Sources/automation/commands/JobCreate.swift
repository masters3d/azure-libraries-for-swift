import Foundation
import azureSwiftRuntime
public protocol JobCreate  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var automationAccountName : String { get set }
    var jobName : String { get set }
    var apiVersion : String { get set }
    var clientRequestId : String? { get set }
    var parameters :  JobCreateParametersProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (JobProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.Job {
// Create create a job of the runbook.
    internal class CreateCommand : BaseCommand, JobCreate {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var automationAccountName : String
        public var jobName : String
        public var apiVersion = "2017-05-15-preview"
        public var clientRequestId : String?
    public var parameters :  JobCreateParametersProtocol?

        public init(subscriptionId: String, resourceGroupName: String, automationAccountName: String, jobName: String, parameters: JobCreateParametersProtocol) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.automationAccountName = automationAccountName
            self.jobName = jobName
            self.parameters = parameters
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/jobs/{jobName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{automationAccountName}"] = String(describing: self.automationAccountName)
            self.pathParameters["{jobName}"] = String(describing: self.jobName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            if self.clientRequestId != nil { headerParameters["clientRequestId"] = String(describing: self.clientRequestId!) }
            self.body = parameters

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(parameters as? JobCreateParametersData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(JobData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (JobProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: JobData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
