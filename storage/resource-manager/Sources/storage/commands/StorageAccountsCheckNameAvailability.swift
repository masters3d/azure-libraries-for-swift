import Foundation
import azureSwiftRuntime
public protocol StorageAccountsCheckNameAvailability  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var accountName :  StorageAccountCheckNameAvailabilityParametersProtocol?  { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping (CheckNameAvailabilityResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.StorageAccounts {
// CheckNameAvailability checks that the storage account name is valid and is not already in use.
internal class CheckNameAvailabilityCommand : BaseCommand, StorageAccountsCheckNameAvailability {
    public var subscriptionId : String
    public var apiVersion : String = "2017-06-01"
    public var accountName :  StorageAccountCheckNameAvailabilityParametersProtocol?

    public init(subscriptionId: String, apiVersion: String, accountName: StorageAccountCheckNameAvailabilityParametersProtocol) {
        self.subscriptionId = subscriptionId
        self.apiVersion = apiVersion
        self.accountName = accountName
        super.init()
        self.method = "Post"
        self.isLongRunningOperation = false
        self.path = "/subscriptions/{subscriptionId}/providers/Microsoft.Storage/checkNameAvailability"
        self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
    }

    public override func preCall()  {
        self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
        self.queryParameters["{api-version}"] = String(describing: self.apiVersion)
    self.body = accountName
}

    public override func encodeBody() throws -> Data? {
        let contentType = "application/json"
        if let mimeType = MimeType.getType(forStr: contentType) {
            let encoder = try CoderFactory.encoder(for: mimeType)
            let encodedValue = try encoder.encode(accountName)
            return encodedValue
        }
        throw DecodeError.unknownMimeType
    }

    public override func returnFunc(data: Data) throws -> Decodable? {
        let contentType = "application/json"
        if let mimeType = MimeType.getType(forStr: contentType) {
            let decoder = try CoderFactory.decoder(for: mimeType)
            return try decoder.decode(CheckNameAvailabilityResultData?.self, from: data)
        }
        throw DecodeError.unknownMimeType
    }
    public func execute(client: RuntimeClient,
        completionHandler: @escaping (CheckNameAvailabilityResultProtocol?, Error?) -> Void) -> Void {
        client.executeAsync(command: self) {
            (result: CheckNameAvailabilityResultData?, error: Error?) in
            completionHandler(result, error)
        }
    }
}
}