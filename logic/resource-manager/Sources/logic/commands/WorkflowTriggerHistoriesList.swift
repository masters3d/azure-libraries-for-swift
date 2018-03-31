import Foundation
import azureSwiftRuntime
public protocol WorkflowTriggerHistoriesList  {
    var nextLink: String? { get }
    var hasAdditionalPages : Bool { get }
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var workflowName : String { get set }
    var triggerName : String { get set }
    var apiVersion : String { get set }
    var top : Int32? { get set }
    var filter : String? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (WorkflowTriggerHistoryListResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.WorkflowTriggerHistories {
// List gets a list of workflow trigger histories.
    internal class ListCommand : BaseCommand, WorkflowTriggerHistoriesList {
        var nextLink: String?
        public var hasAdditionalPages : Bool {
        get {
            return nextLink != nil
        }
    }
        public var subscriptionId : String
        public var resourceGroupName : String
        public var workflowName : String
        public var triggerName : String
        public var apiVersion = "2016-06-01"
        public var top : Int32?
        public var filter : String?

        public init(subscriptionId: String, resourceGroupName: String, workflowName: String, triggerName: String) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.workflowName = workflowName
            self.triggerName = triggerName
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/workflows/{workflowName}/triggers/{triggerName}/histories"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{workflowName}"] = String(describing: self.workflowName)
            self.pathParameters["{triggerName}"] = String(describing: self.triggerName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            if self.top != nil { queryParameters["$top"] = String(describing: self.top!) }
            if self.filter != nil { queryParameters["$filter"] = String(describing: self.filter!) }

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                if var pageDecoder = decoder as? PageDecoder {
                    pageDecoder.isPagedData = true
                    pageDecoder.nextLinkName = "NextLink"
                }
                let result = try decoder.decode(WorkflowTriggerHistoryListResultData?.self, from: data)
                if var pageDecoder = decoder as? PageDecoder {
                    self.nextLink = pageDecoder.nextLink
                }
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (WorkflowTriggerHistoryListResultProtocol?, Error?) -> Void) -> Void {
            if self.nextLink != nil {
                self.path = nextLink!
                self.nextLink = nil;
                self.pathType = .absolute
            }
            client.executeAsync(command: self) {
                (result: WorkflowTriggerHistoryListResultData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
