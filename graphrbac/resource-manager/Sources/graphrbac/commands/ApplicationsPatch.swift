import Foundation
import azureSwiftRuntime
public protocol ApplicationsPatch  {
    var headerParameters: [String: String] { get set }
    var applicationObjectId : String { get set }
    var tenantID : String { get set }
    var apiVersion : String { get set }
    var parameters :  ApplicationUpdateParametersProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (Error?) -> Void) -> Void;
}

extension Commands.Applications {
// Patch update an existing application.
    internal class PatchCommand : BaseCommand, ApplicationsPatch {
        public var applicationObjectId : String
        public var tenantID : String
        public var apiVersion = "1.6"
    public var parameters :  ApplicationUpdateParametersProtocol?

        public init(applicationObjectId: String, tenantID: String, parameters: ApplicationUpdateParametersProtocol) {
            self.applicationObjectId = applicationObjectId
            self.tenantID = tenantID
            self.parameters = parameters
            super.init()
            self.method = "Patch"
            self.isLongRunningOperation = false
            self.path = "/{tenantID}/applications/{applicationObjectId}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{applicationObjectId}"] = String(describing: self.applicationObjectId)
            self.pathParameters["{tenantID}"] = String(describing: self.tenantID)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = parameters

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(parameters as? ApplicationUpdateParametersData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }
}
