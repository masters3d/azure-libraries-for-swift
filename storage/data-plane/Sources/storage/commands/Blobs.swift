// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

// Blobs is the client for the Blobs methods of the AzureBlobStorage service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Blobs {
    public static func AbortCopy(accountName: String, containerName: String, blobName: String, copyId: String, comp: String = "copy") -> BlobsAbortCopy {
        return AbortCopyCommand(accountName: accountName, container: containerName, blob: blobName, copyId: copyId, comp: comp)
    }
    public static func AppendBlock(accountName: String, containerName: String, blobName: String, comp: String = "appendblock", _body: Data) -> BlobsAppendBlock {
        return AppendBlockCommand(accountName: accountName, container: containerName, blob: blobName, comp: comp, _body: _body)
    }
    public static func Copy(accountName: String, containerName: String, blobName: String) -> BlobsCopy {
        return CopyCommand(accountName: accountName, container: containerName, blob: blobName)
    }
    public static func Delete(azureStorageKey: String, accountName: String, containerName: String, blobName: String) -> BlobsDelete {
        return DeleteCommand(azureStorageKey: azureStorageKey, accountName: accountName, container: containerName, blob: blobName)
    }
    public static func Get(azureStorageKey: String, accountName: String, containerName: String, blobName: String) -> BlobsGet {
        return GetCommand(azureStorageKey: azureStorageKey, accountName: accountName, container: containerName, blob: blobName)
    }
    public static func GetMetadata(accountName: String, containerName: String, blobName: String, comp: String = "metadata") -> BlobsGetMetadata {
        return GetMetadataCommand(accountName: accountName, container: containerName, blob: blobName, comp: comp)
    }
    public static func GetProperties(azureStorageKey: String, accountName: String, containerName: String, blobName: String) -> BlobsGetProperties {
        return GetPropertiesCommand(azureStorageKey: azureStorageKey, accountName: accountName, container: containerName, blob: blobName)
    }
    public static func Lease(accountName: String, containerName: String, blobName: String, comp: String = "lease") -> BlobsLease {
        return LeaseCommand(accountName: accountName, container: containerName, blob: blobName, comp: comp)
    }
    public static func Put(azureStorageKey: String, accountName: String, containerName: String, blobName: String, blobType: BlobType) -> BlobsPut {
        let cmd = PutCommand(azureStorageKey: azureStorageKey, accountName: accountName, container: containerName, blob: blobName)
        cmd.blobType = blobType.rawValue
        return cmd
    }
    public static func SetMetadata(accountName: String, containerName: String, blobName: String, comp: String = "metadata") -> BlobsSetMetadata {
        return SetMetadataCommand(accountName: accountName, container: containerName, blob: blobName, comp: comp)
    }
    public static func SetProperties(accountName: String, containerName: String, blobName: String, comp: String = "properties") -> BlobsSetProperties {
        return SetPropertiesCommand(accountName: accountName, container: containerName, blob: blobName, comp: comp)
    }
    public static func TakeSnapshot(accountName: String, containerName: String, blobName: String, comp: String = "snapshot") -> BlobsTakeSnapshot {
        return TakeSnapshotCommand(accountName: accountName, container: containerName, blob: blobName, comp: comp)
    }
}
}
