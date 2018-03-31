import Foundation
import azureSwiftRuntime
public protocol ConsumerGroupsGet {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var namespaceName : String { get set }
    var eventHubName : String { get set }
    var consumerGroupName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ConsumerGroupProtocol?, Error?) -> Void)
}

extension Commands.ConsumerGroups {
// Get gets a description for the specified consumer group.
    internal class GetCommand : BaseCommand, ConsumerGroupsGet {
        public var resourceGroupName : String
        public var namespaceName : String
        public var eventHubName : String
        public var consumerGroupName : String
        public var subscriptionId : String
        public var apiVersion = "2017-04-01"

        public init(resourceGroupName: String, namespaceName: String, eventHubName: String, consumerGroupName: String, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.namespaceName = namespaceName
            self.eventHubName = eventHubName
            self.consumerGroupName = consumerGroupName
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventhubs/{eventHubName}/consumergroups/{consumerGroupName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{namespaceName}"] = String(describing: self.namespaceName)
            self.pathParameters["{eventHubName}"] = String(describing: self.eventHubName)
            self.pathParameters["{consumerGroupName}"] = String(describing: self.consumerGroupName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ConsumerGroupData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ConsumerGroupProtocol?, Error?) -> Void) {
            client.executeAsync(command: self) {
                (result: ConsumerGroupData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
