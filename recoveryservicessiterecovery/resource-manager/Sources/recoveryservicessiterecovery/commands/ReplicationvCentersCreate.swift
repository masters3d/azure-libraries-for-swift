import Foundation
import azureSwiftRuntime
public protocol ReplicationvCentersCreate  {
    var headerParameters: [String: String] { get set }
    var resourceName : String { get set }
    var resourceGroupName : String { get set }
    var subscriptionId : String { get set }
    var fabricName : String { get set }
    var vCenterName : String { get set }
    var apiVersion : String { get set }
    var addVCenterRequest :  AddVCenterRequestProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (VCenterProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.ReplicationvCenters {
// Create the operation to create a vCenter object.. This method may poll for completion. Polling can be canceled by
// passing the cancel channel argument. The channel will be used to cancel polling and any outstanding HTTP requests.
    internal class CreateCommand : BaseCommand, ReplicationvCentersCreate {
        public var resourceName : String
        public var resourceGroupName : String
        public var subscriptionId : String
        public var fabricName : String
        public var vCenterName : String
        public var apiVersion = "2018-01-10"
    public var addVCenterRequest :  AddVCenterRequestProtocol?

        public init(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, vCenterName: String, addVCenterRequest: AddVCenterRequestProtocol) {
            self.resourceName = resourceName
            self.resourceGroupName = resourceGroupName
            self.subscriptionId = subscriptionId
            self.fabricName = fabricName
            self.vCenterName = vCenterName
            self.addVCenterRequest = addVCenterRequest
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = true
            self.path = "/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationvCenters/{vCenterName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceName}"] = String(describing: self.resourceName)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{fabricName}"] = String(describing: self.fabricName)
            self.pathParameters["{vCenterName}"] = String(describing: self.vCenterName)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = addVCenterRequest

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(addVCenterRequest as? AddVCenterRequestData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(VCenterData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (VCenterProtocol?, Error?) -> Void) -> Void {
            client.executeAsyncLRO(command: self) {
                (result: VCenterData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
