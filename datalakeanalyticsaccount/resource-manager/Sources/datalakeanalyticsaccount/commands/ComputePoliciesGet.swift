import Foundation
import azureSwiftRuntime
public protocol ComputePoliciesGet  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var accountName : String { get set }
    var computePolicyName : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ComputePolicyProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.ComputePolicies {
// Get gets the specified Data Lake Analytics compute policy.
    internal class GetCommand : BaseCommand, ComputePoliciesGet {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var accountName : String
        public var computePolicyName : String
        public var apiVersion = "2016-11-01"

        public init(subscriptionId: String, resourceGroupName: String, accountName: String, computePolicyName: String) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.accountName = accountName
            self.computePolicyName = computePolicyName
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/computePolicies/{computePolicyName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{accountName}"] = String(describing: self.accountName)
            self.pathParameters["{computePolicyName}"] = String(describing: self.computePolicyName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ComputePolicyData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ComputePolicyProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: ComputePolicyData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
