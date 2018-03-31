import Foundation
import azureSwiftRuntime
public protocol WorkflowVersionsList {
    var nextLink: String? { get }
    var hasAdditionalPages : Bool { get }
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var workflowName : String { get set }
    var apiVersion : String { get set }
    var top : Int32? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (WorkflowVersionListResultProtocol?, Error?) -> Void)
}

extension Commands.WorkflowVersions {
// List gets a list of workflow versions.
    internal class ListCommand : BaseCommand, WorkflowVersionsList {
        var nextLink: String?
        public var hasAdditionalPages : Bool {
        get {
            return nextLink != nil
        }
    }
        public var subscriptionId : String
        public var resourceGroupName : String
        public var workflowName : String
        public var apiVersion = "2016-06-01"
        public var top : Int32?

        public init(subscriptionId: String, resourceGroupName: String, workflowName: String) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.workflowName = workflowName
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/versions"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{workflowName}"] = String(describing: self.workflowName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            if self.top != nil { queryParameters["$top"] = String(describing: self.top!) }

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                if var pageDecoder = decoder as? PageDecoder {
                    pageDecoder.isPagedData = true
                    pageDecoder.nextLinkName = "NextLink"
                }
                let result = try decoder.decode(WorkflowVersionListResultData?.self, from: data)
                if var pageDecoder = decoder as? PageDecoder {
                    self.nextLink = pageDecoder.nextLink
                }
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (WorkflowVersionListResultProtocol?, Error?) -> Void) {
            if self.nextLink != nil {
                self.path = nextLink!
                self.nextLink = nil
                self.pathType = .absolute
            }
            client.executeAsync(command: self) {
                (result: WorkflowVersionListResultData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
