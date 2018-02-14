// MabServerType enumerates the values for mab server type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum MabServerTypeEnum: String, Codable
{
// MabServerTypeAzureBackupServerContainer specifies the mab server type azure backup server container state for mab
// server type.
    case MabServerTypeAzureBackupServerContainer = "AzureBackupServerContainer"
// MabServerTypeAzureSqlContainer specifies the mab server type azure sql container state for mab server type.
    case MabServerTypeAzureSqlContainer = "AzureSqlContainer"
// MabServerTypeCluster specifies the mab server type cluster state for mab server type.
    case MabServerTypeCluster = "Cluster"
// MabServerTypeDPMContainer specifies the mab server type dpm container state for mab server type.
    case MabServerTypeDPMContainer = "DPMContainer"
// MabServerTypeGenericContainer specifies the mab server type generic container state for mab server type.
    case MabServerTypeGenericContainer = "GenericContainer"
// MabServerTypeIaasVMContainer specifies the mab server type iaas vm container state for mab server type.
    case MabServerTypeIaasVMContainer = "IaasVMContainer"
// MabServerTypeIaasVMServiceContainer specifies the mab server type iaas vm service container state for mab server
// type.
    case MabServerTypeIaasVMServiceContainer = "IaasVMServiceContainer"
// MabServerTypeInvalid specifies the mab server type invalid state for mab server type.
    case MabServerTypeInvalid = "Invalid"
// MabServerTypeMABContainer specifies the mab server type mab container state for mab server type.
    case MabServerTypeMABContainer = "MABContainer"
// MabServerTypeSQLAGWorkLoadContainer specifies the mab server type sqlag work load container state for mab server
// type.
    case MabServerTypeSQLAGWorkLoadContainer = "SQLAGWorkLoadContainer"
// MabServerTypeStorageContainer specifies the mab server type storage container state for mab server type.
    case MabServerTypeStorageContainer = "StorageContainer"
// MabServerTypeUnknown specifies the mab server type unknown state for mab server type.
    case MabServerTypeUnknown = "Unknown"
// MabServerTypeVCenter specifies the mab server type v center state for mab server type.
    case MabServerTypeVCenter = "VCenter"
// MabServerTypeVMAppContainer specifies the mab server type vm app container state for mab server type.
    case MabServerTypeVMAppContainer = "VMAppContainer"
// MabServerTypeWindows specifies the mab server type windows state for mab server type.
    case MabServerTypeWindows = "Windows"
}
