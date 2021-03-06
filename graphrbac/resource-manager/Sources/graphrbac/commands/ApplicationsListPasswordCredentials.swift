import Foundation
import azureSwiftRuntime
public protocol ApplicationsListPasswordCredentials  {
    var nextLink: String? { get }
    var hasAdditionalPages : Bool { get }
    var headerParameters: [String: String] { get set }
    var applicationObjectId : String { get set }
    var tenantID : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (PasswordCredentialListResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.Applications {
// ListPasswordCredentials get the passwordCredentials associated with an application.
    internal class ListPasswordCredentialsCommand : BaseCommand, ApplicationsListPasswordCredentials {
        var nextLink: String?
        public var hasAdditionalPages : Bool {
        get {
            return nextLink != nil
        }
    }
        public var applicationObjectId : String
        public var tenantID : String
        public var apiVersion = "1.6"

        public init(applicationObjectId: String, tenantID: String) {
            self.applicationObjectId = applicationObjectId
            self.tenantID = tenantID
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/{tenantID}/applications/{applicationObjectId}/passwordCredentials"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{applicationObjectId}"] = String(describing: self.applicationObjectId)
            self.pathParameters["{tenantID}"] = String(describing: self.tenantID)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                if var pageDecoder = decoder as? PageDecoder {
                    pageDecoder.isPagedData = true
                    pageDecoder.nextLinkName = "nil"
                }
                let result = try decoder.decode(PasswordCredentialListResultData?.self, from: data)
                if var pageDecoder = decoder as? PageDecoder {
                    self.nextLink = pageDecoder.nextLink
                }
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (PasswordCredentialListResultProtocol?, Error?) -> Void) -> Void {
            if self.nextLink != nil {
                self.path = nextLink!
                self.nextLink = nil;
                self.pathType = .absolute
            }
            client.executeAsync(command: self) {
                (result: PasswordCredentialListResultData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
