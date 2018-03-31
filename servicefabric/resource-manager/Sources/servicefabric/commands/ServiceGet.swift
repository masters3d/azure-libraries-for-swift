import Foundation
import azureSwiftRuntime
public protocol ServiceGet {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var clusterName : String { get set }
    var applicationName : String { get set }
    var serviceName : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ServiceResourceProtocol?, Error?) -> Void)
}

extension Commands.Service {
// Get returns a service resource with the specified name.
    internal class GetCommand : BaseCommand, ServiceGet {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var clusterName : String
        public var applicationName : String
        public var serviceName : String
        public var apiVersion = "2017-07-01-preview"

        public init(subscriptionId: String, resourceGroupName: String, clusterName: String, applicationName: String, serviceName: String) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.clusterName = clusterName
            self.applicationName = applicationName
            self.serviceName = serviceName
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/clusters/{clusterName}/applications/{applicationName}/services/{serviceName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{clusterName}"] = String(describing: self.clusterName)
            self.pathParameters["{applicationName}"] = String(describing: self.applicationName)
            self.pathParameters["{serviceName}"] = String(describing: self.serviceName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ServiceResourceData?.self, from: data)
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ServiceResourceProtocol?, Error?) -> Void) {
            client.executeAsync(command: self) {
                (result: ServiceResourceData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
