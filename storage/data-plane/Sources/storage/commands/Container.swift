// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

// Container is the client for the Container methods of the AzureBlobStorage service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Container {
    public static func Create(accountName: String, container: String, restype: String) -> ContainerCreate {
        return CreateCommand(accountName: accountName, container: container, restype: restype)
    }
    public static func Delete(accountName: String, container: String, restype: String) -> ContainerDelete {
        return DeleteCommand(accountName: accountName, container: container, restype: restype)
    }
    public static func GetAcl(accountName: String, container: String, restype: String, comp: String) -> ContainerGetAcl {
        return GetAclCommand(accountName: accountName, container: container, restype: restype, comp: comp)
    }
    public static func GetMetadata(accountName: String, container: String, restype: String, comp: String) -> ContainerGetMetadata {
        return GetMetadataCommand(accountName: accountName, container: container, restype: restype, comp: comp)
    }
    public static func GetProperties(accountName: String, container: String, restype: String) -> ContainerGetProperties {
        return GetPropertiesCommand(accountName: accountName, container: container, restype: restype)
    }
    public static func Lease(accountName: String, container: String, comp: String, restype: String) -> ContainerLease {
        return LeaseCommand(accountName: accountName, container: container, comp: comp, restype: restype)
    }
    public static func ListBlobs(azureStorageKey: String, accountName: String, container: String, restype: String, comp: String) -> ContainerListBlobs {
        return ListBlobsCommand(azureStorageKey: azureStorageKey, accountName: accountName, container: container, restype: restype, comp: comp)
    }
    public static func SetAcl(accountName: String, container: String, restype: String, comp: String) -> ContainerSetAcl {
        return SetAclCommand(accountName: accountName, container: container, restype: restype, comp: comp)
    }
    public static func SetMetadata(accountName: String, container: String, restype: String, comp: String) -> ContainerSetMetadata {
        return SetMetadataCommand(accountName: accountName, container: container, restype: restype, comp: comp)
    }
}
}
