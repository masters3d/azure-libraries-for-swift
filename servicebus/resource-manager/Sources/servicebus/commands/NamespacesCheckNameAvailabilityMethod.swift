import Foundation
import azureSwiftRuntime
public protocol NamespacesCheckNameAvailabilityMethod  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var parameters :  CheckNameAvailabilityProtocol?  { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping (CheckNameAvailabilityResultProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.Namespaces {
// CheckNameAvailabilityMethod check the give namespace name availability.
internal class CheckNameAvailabilityMethodCommand : BaseCommand, NamespacesCheckNameAvailabilityMethod {
    public var subscriptionId : String
    public var apiVersion = "2017-04-01"
    public var parameters :  CheckNameAvailabilityProtocol?

    public init(subscriptionId: String, parameters: CheckNameAvailabilityProtocol) {
        self.subscriptionId = subscriptionId
        self.parameters = parameters
        super.init()
        self.method = "Post"
        self.isLongRunningOperation = false
        self.path = "/subscriptions/{subscriptionId}/providers/Microsoft.ServiceBus/CheckNameAvailability"
        self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
    }

    public override func preCall()  {
        self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
        self.queryParameters["api-version"] = String(describing: self.apiVersion)
    self.body = parameters
}

    public override func encodeBody() throws -> Data? {
        let contentType = "application/json"
        if let mimeType = MimeType.getType(forStr: contentType) {
            let encoder = try CoderFactory.encoder(for: mimeType)
            let encodedValue = try encoder.encode(parameters)
            return encodedValue
        }
        throw DecodeError.unknownMimeType
    }

    public override func returnFunc(data: Data) throws -> Decodable? {
        let contentType = "application/json"
        if let mimeType = MimeType.getType(forStr: contentType) {
            let decoder = try CoderFactory.decoder(for: mimeType)
            let result = try decoder.decode(CheckNameAvailabilityResultData?.self, from: data)
            return result;
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
