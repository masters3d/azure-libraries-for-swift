import Foundation
import azureSwiftRuntime
public protocol AppServicePlansListWebApps {
    var nextLink: String? { get }
    var hasAdditionalPages : Bool { get }
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var name : String { get set }
    var subscriptionId : String { get set }
    var skipToken : String? { get set }
    var filter : String? { get set }
    var top : String? { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (WebAppCollectionProtocol?, Error?) -> Void)
}

extension Commands.AppServicePlans {
// ListWebApps get all apps associated with an App Service plan.
    internal class ListWebAppsCommand : BaseCommand, AppServicePlansListWebApps {
        var nextLink: String?
        public var hasAdditionalPages : Bool {
        get {
            return nextLink != nil
        }
    }
        public var resourceGroupName : String
        public var name : String
        public var subscriptionId : String
        public var skipToken : String?
        public var filter : String?
        public var top : String?
        public var apiVersion = "2016-09-01"

        public init(resourceGroupName: String, name: String, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.name = name
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/serverfarms/{name}/sites"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{name}"] = String(describing: self.name)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            if self.skipToken != nil { queryParameters["$skipToken"] = String(describing: self.skipToken!) }
            if self.filter != nil { queryParameters["$filter"] = String(describing: self.filter!) }
            if self.top != nil { queryParameters["$top"] = String(describing: self.top!) }
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
                let result = try decoder.decode(WebAppCollectionData?.self, from: data)
                if var pageDecoder = decoder as? PageDecoder {
                    self.nextLink = pageDecoder.nextLink
                }
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (WebAppCollectionProtocol?, Error?) -> Void) {
            if self.nextLink != nil {
                self.path = nextLink!
                self.nextLink = nil
                self.pathType = .absolute
            }
            client.executeAsync(command: self) {
                (result: WebAppCollectionData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
