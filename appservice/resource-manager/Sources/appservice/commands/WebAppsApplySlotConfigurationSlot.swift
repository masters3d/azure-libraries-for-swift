import Foundation
import azureSwiftRuntime
public protocol WebAppsApplySlotConfigurationSlot  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var name : String { get set }
    var slot : String { get set }
    var subscriptionId : String { get set }
    var apiVersion : String { get set }
    var slotSwapEntity :  CsmSlotEntityProtocol?  { get set }
    func execute(client: RuntimeClient,
    completionHandler: @escaping (Error?) -> Void) -> Void;
}

extension Commands.WebApps {
// ApplySlotConfigurationSlot applies the configuration settings from the target slot onto the current slot.
    internal class ApplySlotConfigurationSlotCommand : BaseCommand, WebAppsApplySlotConfigurationSlot {
        public var resourceGroupName : String
        public var name : String
        public var slot : String
        public var subscriptionId : String
        public var apiVersion = "2016-08-01"
    public var slotSwapEntity :  CsmSlotEntityProtocol?

        public init(resourceGroupName: String, name: String, slot: String, subscriptionId: String, slotSwapEntity: CsmSlotEntityProtocol) {
            self.resourceGroupName = resourceGroupName
            self.name = name
            self.slot = slot
            self.subscriptionId = subscriptionId
            self.slotSwapEntity = slotSwapEntity
            super.init()
            self.method = "Post"
            self.isLongRunningOperation = false
            self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/applySlotConfig"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
            self.pathParameters["{name}"] = String(describing: self.name)
            self.pathParameters["{slot}"] = String(describing: self.slot)
            self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
            self.queryParameters["api-version"] = String(describing: self.apiVersion)
            self.body = slotSwapEntity

        }
        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(slotSwapEntity as? CsmSlotEntityData)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }
}
