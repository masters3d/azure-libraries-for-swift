import Foundation
import azureSwiftRuntime

public protocol ContainerGetAcl  {
    var headerParameters: [String: String] { get set }
    var accountName : String { get set }
    var container : String { get set }
    var timeout : Int32? { get set }
    var restype : String { get set }
    var comp : String { get set }
    var leaseId : String?  { get set }
    var version : String?  { get set }
    var requestId : String?  { get set }
    func execute(client: RuntimeClient,
        completionHandler: @escaping ([SignedIdentifierProtocol?]?, Error?) -> Void) -> Void ;
}

extension Commands.Container {
// GetAcl sends the get acl request.
internal class GetAclCommand : BaseCommand, ContainerGetAcl {
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
    
    let azureStorageKey: String

    public init(azureStorageKey: String, accountName: String, container: String, restype: String, comp: String) {
        self.azureStorageKey = azureStorageKey
        self.accountName = accountName
        self.container = container
        self.restype = restype
        self.comp = comp
        super.init()
        self.baseUrl = "https://{accountName}.blob.core.windows.net"
        self.method = "Get"
        self.isLongRunningOperation = false
        self.path = "/{container}"
        self.headerParameters = ["Content-Type":"application/xml; charset=utf-8"]
    }

    public override func preCall() {
        self.pathParameters["{accountName}"] = String(describing: self.accountName)
        self.pathParameters["{container}"] = String(describing: self.container)
        if self.timeout != nil { queryParameters["{timeout}"] = String(describing: self.timeout!) }
        self.queryParameters["restype"] = String(describing: self.restype)
        self.queryParameters["comp"] = String(describing: self.comp)
        self.signRequest(azureStorageKey: self.azureStorageKey, storageAccountName: self.accountName)
    }

    public override func returnFunc(data: Data) throws -> Decodable? {
        let decoder = XMLDecoder().withDateFormatString(DateFormat.iso8601DateTimeMs.rawValue)
        do {
            let res = try decoder.decode([SignedIdentifierData?]?.self, from: data)
            return res
            
        } catch {
            print("=== returnFunc error:", error)
        }
        
        return nil
    }
    
    public func execute(client: RuntimeClient,
        completionHandler: @escaping ([SignedIdentifierProtocol?]?, Error?) -> Void) -> Void {
        client.executeAsync(command: self) {
            (result, error) in
            completionHandler(result, error)
        }
    }
}
}
