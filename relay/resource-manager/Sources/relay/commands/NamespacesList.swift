import Foundation
import azureSwiftRuntime
public protocol NamespacesList  {
    var nextLink: String? { get }
    var hasAdditionalPages : Bool { get }
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping (RelayNamespaceListResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.Namespaces {
// List lists all the available namespaces within the subscription regardless of the resourceGroups.
internal class ListCommand : BaseCommand, NamespacesList {
    var nextLink: String?
    public var hasAdditionalPages : Bool {
        get {
            return nextLink != nil
        }
    }
    public var subscriptionId : String
    public var apiVersion = "2017-04-01"

    public init(subscriptionId: String) {
        self.subscriptionId = subscriptionId
        super.init()
        self.method = "Get"
        self.isLongRunningOperation = false
        self.path = "/subscriptions/{subscriptionId}/providers/Microsoft.Relay/namespaces"
        self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
    }

    public override func preCall()  {
        self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
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
            let result = try decoder.decode(RelayNamespaceListResultData?.self, from: data)
            if var pageDecoder = decoder as? PageDecoder {
                self.nextLink = pageDecoder.nextLink
            }
            return result;
        }
        throw DecodeError.unknownMimeType
    }
    public func execute(client: RuntimeClient,
        completionHandler: @escaping (RelayNamespaceListResultProtocol?, Error?) -> Void) -> Void {
        if self.nextLink != nil {
            self.path = nextLink!
            self.nextLink = nil;
            self.pathType = .absolute
        }
        client.executeAsync(command: self) {
            (result: RelayNamespaceListResultData?, error: Error?) in
            completionHandler(result, error)
        }
    }
}
}