import Foundation
import azureSwiftRuntime
public protocol ArtifactSourcesCreateOrUpdate  {
    var headerParameters: [String: String] { get set }
    var subscriptionId : String { get set }
    var resourceGroupName : String { get set }
    var labName : String { get set }
    var name : String { get set }
    var apiVersion : String { get set }
    var artifactSource :  ArtifactSourceProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (ArtifactSourceProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.ArtifactSources {
// CreateOrUpdate create or replace an existing artifact source.
    internal class CreateOrUpdateCommand : BaseCommand, ArtifactSourcesCreateOrUpdate {
        public var subscriptionId : String
        public var resourceGroupName : String
        public var labName : String
        public var name : String
        public var apiVersion = "2016-05-15"
    public var artifactSource :  ArtifactSourceProtocol?

        public init(subscriptionId: String, resourceGroupName: String, labName: String, name: String, artifactSource: ArtifactSourceProtocol) {
            self.subscriptionId = subscriptionId
            self.resourceGroupName = resourceGroupName
            self.labName = labName
            self.name = name
            self.artifactSource = artifactSource
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/artifactsources/{name}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{labName}"] = String(describing: self.labName)
            self.pathParameters["{name}"] = String(describing: self.name)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = artifactSource

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(artifactSource as? ArtifactSourceData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(ArtifactSourceData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (ArtifactSourceProtocol?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: ArtifactSourceData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
