import Foundation
import azureSwiftRuntime
public protocol ApplicationList  {
    var nextLink: String? { get }
    var hasAdditionalPages : Bool { get }
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var accountName : String { get set }
    var subscriptionId : String { get set }
    var maxresults : Int32? { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping (ListApplicationsResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.Application {
// List lists all of the applications in the specified account.
internal class ListCommand : BaseCommand, ApplicationList {
    var nextLink: String?
    public var hasAdditionalPages : Bool {
        get {
            return nextLink != nil
        }
    }
    public var resourceGroupName : String
    public var accountName : String
    public var subscriptionId : String
    public var maxresults : Int32?
    public var apiVersion = "2017-09-01"

    public init(resourceGroupName: String, accountName: String, subscriptionId: String) {
        self.resourceGroupName = resourceGroupName
        self.accountName = accountName
        self.subscriptionId = subscriptionId
        super.init()
        self.method = "Get"
        self.isLongRunningOperation = false
        self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications"
        self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
    }

    public override func preCall()  {
        self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
        self.pathParameters["{accountName}"] = String(describing: self.accountName)
        self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
        if self.maxresults != nil { queryParameters["maxresults"] = String(describing: self.maxresults!) }
        self.queryParameters["api-version"] = String(describing: self.apiVersion)
}


    public override func returnFunc(data: Data) throws -> Decodable? {
        let contentType = "application/json"
        if let mimeType = MimeType.getType(forStr: contentType) {
            let decoder = try CoderFactory.decoder(for: mimeType)
            if var pageDecoder = decoder as? PageDecoder {
                pageDecoder.isPagedData = true
                pageDecoder.nextLinkName = "NextLink"
            }
            let result = try decoder.decode(ListApplicationsResultData?.self, from: data)
            if var pageDecoder = decoder as? PageDecoder {
                self.nextLink = pageDecoder.nextLink
            }
            return result;
        }
        throw DecodeError.unknownMimeType
    }
    public func execute(client: RuntimeClient,
        completionHandler: @escaping (ListApplicationsResultProtocol?, Error?) -> Void) -> Void {
        if self.nextLink != nil {
            self.path = nextLink!
            self.nextLink = nil;
            self.pathType = .absolute
        }
        client.executeAsync(command: self) {
            (result: ListApplicationsResultData?, error: Error?) in
            completionHandler(result, error)
        }
    }
}
}