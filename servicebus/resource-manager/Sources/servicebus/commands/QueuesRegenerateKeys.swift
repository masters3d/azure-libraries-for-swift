import Foundation
import azureSwiftRuntime
public protocol QueuesRegenerateKeys {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var namespaceName : String { get set }
    var queueName : String { get set }
    var authorizationRuleName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var parameters :  RegenerateAccessKeyParametersProtocol? { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (AccessKeysProtocol?, Error?) -> Void)
}

extension Commands.Queues {
// RegenerateKeys regenerates the primary or secondary connection strings to the queue.
    internal class RegenerateKeysCommand : BaseCommand, QueuesRegenerateKeys {
        public var resourceGroupName : String
        public var namespaceName : String
        public var queueName : String
        public var authorizationRuleName : String
        public var subscriptionId : String
        public var apiVersion = "2017-04-01"
    public var parameters :  RegenerateAccessKeyParametersProtocol?

        public init(resourceGroupName: String, namespaceName: String, queueName: String, authorizationRuleName: String, subscriptionId: String, parameters: RegenerateAccessKeyParametersProtocol) {
            self.resourceGroupName = resourceGroupName
            self.namespaceName = namespaceName
            self.queueName = queueName
            self.authorizationRuleName = authorizationRuleName
            self.subscriptionId = subscriptionId
            self.parameters = parameters
            super.init()
            self.method = "Post"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/queues/{queueName}/authorizationRules/{authorizationRuleName}/regenerateKeys"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{namespaceName}"] = String(describing: self.namespaceName)
            self.pathParameters["{queueName}"] = String(describing: self.queueName)
            self.pathParameters["{authorizationRuleName}"] = String(describing: self.authorizationRuleName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = parameters

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(parameters as? RegenerateAccessKeyParametersData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(AccessKeysData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (AccessKeysProtocol?, Error?) -> Void) {
            client.executeAsync(command: self) {
                (result: AccessKeysData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
