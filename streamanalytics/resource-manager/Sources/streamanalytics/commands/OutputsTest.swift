import Foundation
import azureSwiftRuntime
public protocol OutputsTest {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var jobName : String { get set }
    var outputName : String { get set }
    var apiVersion : String { get set }
    var output :  OutputProtocol? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ResourceTestStatusProtocol?, Error?) -> Void)
}

extension Commands.Outputs {
// Test tests whether an output’s datasource is reachable and usable by the Azure Stream Analytics service. This method
// may poll for completion. Polling can be canceled by passing the cancel channel argument. The channel will be used to
// cancel polling and any outstanding HTTP requests.
    internal class TestCommand : BaseCommand, OutputsTest {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var jobName : String
        public var outputName : String
        public var apiVersion = "2016-03-01"
    public var output :  OutputProtocol?

        public init(subscriptionId: String, resourceGroupName: String, jobName: String, outputName: String) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.jobName = jobName
            self.outputName = outputName
            super.init()
            self.method = "Post"
            self.isLongRunningOperation = true
            self.path = "/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StreamAnalytics/streamingjobs/{jobName}/outputs/{outputName}/test"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{jobName}"] = String(describing: self.jobName)
            self.pathParameters["{outputName}"] = String(describing: self.outputName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = output

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(output as? OutputData?)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ResourceTestStatusData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ResourceTestStatusProtocol?, Error?) -> Void) {
            client.executeAsyncLRO(command: self) {
                (result: ResourceTestStatusData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
