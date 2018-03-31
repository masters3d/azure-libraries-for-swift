import Foundation
import azureSwiftRuntime
public protocol VirtualMachineScaleSetExtensionsDelete  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var vmScaleSetName : String { get set }
    var vmssExtensionName : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (OperationStatusResponseProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.VirtualMachineScaleSetExtensions {
// Delete the operation to delete the extension. This method may poll for completion. Polling can be canceled by
// passing the cancel channel argument. The channel will be used to cancel polling and any outstanding HTTP requests.
    internal class DeleteCommand : BaseCommand, VirtualMachineScaleSetExtensionsDelete {
        public var resourceGroupName : String
        public var vmScaleSetName : String
        public var vmssExtensionName : String
        public var subscriptionId : String
        public var apiVersion = "2017-12-01"

        public init(resourceGroupName: String, vmScaleSetName: String, vmssExtensionName: String, subscriptionId: String) {
            self.resourceGroupName = resourceGroupName
            self.vmScaleSetName = vmScaleSetName
            self.vmssExtensionName = vmssExtensionName
            self.subscriptionId = subscriptionId
            super.init()
            self.method = "Delete"
            self.isLongRunningOperation = true
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/extensions/{vmssExtensionName}"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{vmScaleSetName}"] = String(describing: self.vmScaleSetName)
            self.pathParameters["{vmssExtensionName}"] = String(describing: self.vmssExtensionName)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)

        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let result = try decoder.decode(OperationStatusResponseData?.self, from: data)
                return result;
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (OperationStatusResponseProtocol?, Error?) -> Void) -> Void {
            client.executeAsyncLRO(command: self) {
                (result: OperationStatusResponseData?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }
}
