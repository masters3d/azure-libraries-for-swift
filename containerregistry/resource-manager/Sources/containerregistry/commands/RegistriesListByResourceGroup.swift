import Foundation
import azureSwiftRuntime
public protocol RegistriesListByResourceGroup {
    var nextLink: String? { get }
    var hasAdditionalPages : Bool { get }
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (RegistryListResultProtocol?, Error?) -> Void)
}

extension Commands.Registries {
// ListByResourceGroup lists all the container registries under the specified resource group.
    internal class ListByResourceGroupCommand : BaseCommand, RegistriesListByResourceGroup {
        var nextLink: String?
        public var hasAdditionalPages : Bool {
        get {
            return nextLink != nil
        }
    }
        public var subscriptionId : String
        public var resourceGroupName : String
        public var apiVersion = "2017-10-01"

        public init(subscriptionId: String, resourceGroupName: String) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall() {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                if var pageDecoder = decoder as? PageDecoder {
                    pageDecoder.isPagedData = true
                    pageDecoder.nextLinkName = "NextLink"
                }
                let result = try decoder.decode(RegistryListResultData?.self, from: data)
                if var pageDecoder = decoder as? PageDecoder {
                    self.nextLink = pageDecoder.nextLink
                }
                return result
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (RegistryListResultProtocol?, Error?) -> Void) {
            if self.nextLink != nil {
                self.path = nextLink!
                self.nextLink = nil
                self.pathType = .absolute
            }
            client.executeAsync(command: self) {
                (result: RegistryListResultData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
