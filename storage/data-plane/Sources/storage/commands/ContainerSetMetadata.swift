import Foundation
import azureSwiftRuntime
public protocol ContainerSetMetadata  {
    var headerParameters: [String: String] { get set }
    var accountName : String { get set }
    var container : String { get set }
    var timeout : Int32? { get set }
    var restype : String { get set }
    var comp : String { get set }
    var leaseId : String?  { get set }
    var xMsMeta : String?  { get set }
    var ifModifiedSince : String?  { get set }
    var version : String?  { get set }
    var requestId : String?  { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping (Error?) -> Void) -> Void;
}

extension Commands.Container {
// SetMetadata operation sets one or more user-defined name-value pairs for the specified container.
internal class SetMetadataCommand : BaseCommand, ContainerSetMetadata {
    public var accountName : String
    public var container : String
    public var timeout : Int32?
    public var restype : String
    public var comp : String

    public var leaseId : String? {
        set {
            if newValue != nil {
                headerParameters["x-ms-lease-id"] = newValue!
            }else {
                headerParameters["x-ms-lease-id"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "x-ms-lease-id" }) {
                return headerParameters["x-ms-lease-id"]
            }else {
                return nil
            }
        }
    }

    public var xMsMeta : String? {
        set {
            if newValue != nil {
                headerParameters["x-ms-meta"] = newValue!
            }else {
                headerParameters["x-ms-meta"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "x-ms-meta" }) {
                return headerParameters["x-ms-meta"]
            }else {
                return nil
            }
        }
    }

    public var ifModifiedSince : String? {
        set {
            if newValue != nil {
                headerParameters["If-Modified-Since"] = newValue!
            }else {
                headerParameters["If-Modified-Since"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "If-Modified-Since" }) {
                return headerParameters["If-Modified-Since"]
            }else {
                return nil
            }
        }
    }

    public var version : String? {
        set {
            if newValue != nil {
                headerParameters["x-ms-version"] = newValue!
            }else {
                headerParameters["x-ms-version"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "x-ms-version" }) {
                return headerParameters["x-ms-version"]
            }else {
                return nil
            }
        }
    }

    public var requestId : String? {
        set {
            if newValue != nil {
                headerParameters["x-ms-client-request-id"] = newValue!
            }else {
                headerParameters["x-ms-client-request-id"] = nil
            }
        }
        get {
            if headerParameters.contains(where: { $0.key == "x-ms-client-request-id" }) {
                return headerParameters["x-ms-client-request-id"]
            }else {
                return nil
            }
        }
    }

    public init(accountName: String, container: String, restype: String, comp: String) {
        self.accountName = accountName
        self.container = container
        self.restype = restype
        self.comp = comp
        super.init()
        self.baseUrl = "https://{accountName}.blob.core.windows.net"
        self.method = "Put"
        self.isLongRunningOperation = false
        self.path = "/{container}"
        self.headerParameters = ["Content-Type":"application/xml; charset=utf-8"]
    }

    public override func preCall()  {
        self.pathParameters["{accountName}"] = String(describing: self.accountName)
        self.pathParameters["{container}"] = String(describing: self.container)
        if self.timeout != nil { queryParameters["{timeout}"] = String(describing: self.timeout!) }
        self.queryParameters["{restype}"] = String(describing: self.restype)
        self.queryParameters["{comp}"] = String(describing: self.comp)
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
