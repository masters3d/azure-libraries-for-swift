import Foundation
import azureSwiftRuntime
public protocol ReplicationFabricsCheckConsistency  {
    var headerParameters: [String: String] { get set }
    var resourceName : String { get set }
    var resourceGroupName : String { get set }
    var subscriptionId : String { get set }
    var fabricName : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping (FabricProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.ReplicationFabrics {
// CheckConsistency the operation to perform a consistency check on the fabric. This method may poll for completion.
// Polling can be canceled by passing the cancel channel argument. The channel will be used to cancel polling and any
// outstanding HTTP requests.
internal class CheckConsistencyCommand : BaseCommand, ReplicationFabricsCheckConsistency {
    public var resourceName : String
    public var resourceGroupName : String
    public var subscriptionId : String
    public var fabricName : String
    public var apiVersion = "2016-08-10"

    public init(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String) {
        self.resourceName = resourceName
        self.resourceGroupName = resourceGroupName
        self.subscriptionId = subscriptionId
        self.fabricName = fabricName
        super.init()
        self.method = "Post"
        self.isLongRunningOperation = true
        self.path = "/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/checkConsistency"
        self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
    }

    public override func preCall()  {
        self.pathParameters["{resourceName}"] = String(describing: self.resourceName)
        self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
        self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
        self.pathParameters["{fabricName}"] = String(describing: self.fabricName)
        self.queryParameters["api-version"] = String(describing: self.apiVersion)
}


    public override func returnFunc(data: Data) throws -> Decodable? {
        let contentType = "application/json"
        if let mimeType = MimeType.getType(forStr: contentType) {
            let decoder = try CoderFactory.decoder(for: mimeType)
            let result = try decoder.decode(FabricData?.self, from: data)
            return result;
        }
        throw DecodeError.unknownMimeType
    }
    public func execute(client: RuntimeClient,
        completionHandler: @escaping (FabricProtocol?, Error?) -> Void) -> Void {
        client.executeAsyncLRO(command: self) {
            (result: FabricData?, error: Error?) in
            completionHandler(result, error)
        }
    }
}
}
