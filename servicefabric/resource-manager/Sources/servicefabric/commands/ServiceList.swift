import Foundation
import azureSwiftRuntime
public protocol ServiceList  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var clusterName : String { get set }
    var applicationName : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ServiceResourceListProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.Service {
// List returns all service resources in the specified application.
    internal class ListCommand : BaseCommand, ServiceList {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var clusterName : String
        public var applicationName : String
        public var apiVersion = "2017-07-01-preview"

        public init(subscriptionId: String, resourceGroupName: String, clusterName: String, applicationName: String) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.clusterName = clusterName
            self.applicationName = applicationName
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/clusters/{clusterName}/applications/{applicationName}/services"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{clusterName}"] = String(describing: self.clusterName)
            self.pathParameters["{applicationName}"] = String(describing: self.applicationName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ServiceResourceListData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ServiceResourceListProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: ServiceResourceListData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
