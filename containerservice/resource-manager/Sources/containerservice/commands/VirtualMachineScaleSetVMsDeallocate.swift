import Foundation
import azureSwiftRuntime
public protocol VirtualMachineScaleSetVMsDeallocate  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var vmScaleSetName : String { get set }
    var instanceId : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping (OperationStatusResponseProtocol?, Error?) -> Void) -> Void ;
}

extension Commands.VirtualMachineScaleSetVMs {
// Deallocate deallocates a specific virtual machine in a VM scale set. Shuts down the virtual machine and releases the
// compute resources it uses. You are not billed for the compute resources of this virtual machine once it is
// deallocated. This method may poll for completion. Polling can be canceled by passing the cancel channel argument.
// The channel will be used to cancel polling and any outstanding HTTP requests.
internal class DeallocateCommand : BaseCommand, VirtualMachineScaleSetVMsDeallocate {
    public var resourceGroupName : String
    public var vmScaleSetName : String
    public var instanceId : String
    public var subscriptionId : String
    public var apiVersion = "2017-12-01"

    public init(resourceGroupName: String, vmScaleSetName: String, instanceId: String, subscriptionId: String) {
        self.resourceGroupName = resourceGroupName
        self.vmScaleSetName = vmScaleSetName
        self.instanceId = instanceId
        self.subscriptionId = subscriptionId
        super.init()
        self.method = "Post"
        self.isLongRunningOperation = true
        self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualmachines/{instanceId}/deallocate"
        self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
    }

    public override func preCall()  {
        self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
        self.pathParameters["{vmScaleSetName}"] = String(describing: self.vmScaleSetName)
        self.pathParameters["{instanceId}"] = String(describing: self.instanceId)
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
