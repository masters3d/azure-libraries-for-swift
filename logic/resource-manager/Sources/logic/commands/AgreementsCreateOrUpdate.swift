import Foundation
import azureSwiftRuntime
public protocol AgreementsCreateOrUpdate {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var integrationAccountName : String { get set }
    var agreementName : String { get set }
    var apiVersion : String { get set }
    var agreement :  IntegrationAccountAgreementProtocol? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (IntegrationAccountAgreementProtocol?, Error?) -> Void)
}

extension Commands.Agreements {
// CreateOrUpdate creates or updates an integration account agreement.
    internal class CreateOrUpdateCommand : BaseCommand, AgreementsCreateOrUpdate {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var integrationAccountName : String
        public var agreementName : String
        public var apiVersion = "2016-06-01"
    public var agreement :  IntegrationAccountAgreementProtocol?

        public init(subscriptionId: String, resourceGroupName: String, integrationAccountName: String, agreementName: String, agreement: IntegrationAccountAgreementProtocol) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.integrationAccountName = integrationAccountName
            self.agreementName = agreementName
            self.agreement = agreement
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/agreements/{agreementName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{integrationAccountName}"] = String(describing: self.integrationAccountName)
            self.pathParameters["{agreementName}"] = String(describing: self.agreementName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = agreement

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(agreement as? IntegrationAccountAgreementData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(IntegrationAccountAgreementData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (IntegrationAccountAgreementProtocol?, Error?) -> Void) {
            client.executeAsync(command: self) {
                (result: IntegrationAccountAgreementData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
