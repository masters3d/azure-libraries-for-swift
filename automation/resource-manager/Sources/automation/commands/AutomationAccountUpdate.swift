import Foundation
import azureSwiftRuntime
public protocol AutomationAccountUpdate  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var automationAccountName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var parameters :  AutomationAccountUpdateParametersProtocol?  { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping (AutomationAccountProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.AutomationAccount {
// Update update an automation account.
internal class UpdateCommand : BaseCommand, AutomationAccountUpdate {
    public var resourceGroupName : String
    public var automationAccountName : String
    public var subscriptionId : String
    public var apiVersion = "2015-10-31"
    public var parameters :  AutomationAccountUpdateParametersProtocol?

    public init(resourceGroupName: String, automationAccountName: String, subscriptionId: String, parameters: AutomationAccountUpdateParametersProtocol) {
        self.resourceGroupName = resourceGroupName
        self.automationAccountName = automationAccountName
        self.subscriptionId = subscriptionId
        self.parameters = parameters
        super.init()
        self.method = "Patch"
        self.isLongRunningOperation = false
        self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}"
        self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
    }

    public override func preCall()  {
        self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
        self.pathParameters["{automationAccountName}"] = String(describing: self.automationAccountName)
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
            let result = try decoder.decode(AutomationAccountData?.self, from: data)
            return result;
        }
        throw DecodeError.unknownMimeType
    }
    public func execute(client: RuntimeClient,
        completionHandler: @escaping (AutomationAccountProtocol?, Error?) -> Void) -> Void {
        client.executeAsync(command: self) {
            (result: AutomationAccountData?, error: Error?) in
            completionHandler(result, error)
        }
    }
}
}
