import Foundation
import azureSwiftRuntime
public protocol FirewallRulesGet {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var accountName : String { get set }
    var firewallRuleName : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (FirewallRuleProtocol?, Error?) -> Void)
}

extension Commands.FirewallRules {
// Get gets the specified Data Lake Analytics firewall rule.
    internal class GetCommand : BaseCommand, FirewallRulesGet {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var accountName : String
        public var firewallRuleName : String
        public var apiVersion = "2016-11-01"

        public init(subscriptionId: String, resourceGroupName: String, accountName: String, firewallRuleName: String) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.accountName = accountName
            self.firewallRuleName = firewallRuleName
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/firewallRules/{firewallRuleName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{accountName}"] = String(describing: self.accountName)
            self.pathParameters["{firewallRuleName}"] = String(describing: self.firewallRuleName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(FirewallRuleData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (FirewallRuleProtocol?, Error?) -> Void) {
            client.executeAsync(command: self) {
                (result: FirewallRuleData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
