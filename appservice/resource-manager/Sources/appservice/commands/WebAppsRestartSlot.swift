import Foundation
import azureSwiftRuntime
public protocol WebAppsRestartSlot  {
    var headerParameters: [String: String] { get set }
    var resourceGroupName : String { get set }
    var name : String { get set }
    var slot : String { get set }
    var subscriptionId : String { get set }
    var softRestart : Bool? { get set }
    var synchronous : Bool? { get set }
    var apiVersion : String { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping (Error?) -> Void) -> Void;
}

extension Commands.WebApps {
// RestartSlot restarts an app (or deployment slot, if specified).
internal class RestartSlotCommand : BaseCommand, WebAppsRestartSlot {
    public var resourceGroupName : String
    public var name : String
    public var slot : String
    public var subscriptionId : String
    public var softRestart : Bool?
    public var synchronous : Bool?
    public var apiVersion = "2016-08-01"

    public init(resourceGroupName: String, name: String, slot: String, subscriptionId: String) {
        self.resourceGroupName = resourceGroupName
        self.name = name
        self.slot = slot
        self.subscriptionId = subscriptionId
        super.init()
        self.method = "Post"
        self.isLongRunningOperation = false
        self.path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/restart"
        self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
    }

    public override func preCall()  {
        self.pathParameters["{resourceGroupName}"] = String(describing: self.resourceGroupName)
        self.pathParameters["{name}"] = String(describing: self.name)
        self.pathParameters["{slot}"] = String(describing: self.slot)
        self.pathParameters["{subscriptionId}"] = String(describing: self.subscriptionId)
        if self.softRestart != nil { queryParameters["softRestart"] = String(describing: self.softRestart!) }
        if self.synchronous != nil { queryParameters["synchronous"] = String(describing: self.synchronous!) }
        self.queryParameters["api-version"] = String(describing: self.apiVersion)
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
