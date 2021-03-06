// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ReplicationFabrics is the client for the ReplicationFabrics methods of the SiteRecoveryManagementClient service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ReplicationFabrics {
    public static func CheckConsistency(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String) -> ReplicationFabricsCheckConsistency {
        return CheckConsistencyCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName)
    }
    public static func Create(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, input: FabricCreationInputProtocol) -> ReplicationFabricsCreate {
        return CreateCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, input: input)
    }
    public static func Delete(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String) -> ReplicationFabricsDelete {
        return DeleteCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName)
    }
    public static func Get(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String) -> ReplicationFabricsGet {
        return GetCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName)
    }
    public static func List(resourceName: String, resourceGroupName: String, subscriptionId: String) -> ReplicationFabricsList {
        return ListCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func MigrateToAad(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String) -> ReplicationFabricsMigrateToAad {
        return MigrateToAadCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName)
    }
    public static func Purge(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String) -> ReplicationFabricsPurge {
        return PurgeCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName)
    }
    public static func ReassociateGateway(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, failoverProcessServerRequest: FailoverProcessServerRequestProtocol) -> ReplicationFabricsReassociateGateway {
        return ReassociateGatewayCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, failoverProcessServerRequest: failoverProcessServerRequest)
    }
    public static func RenewCertificate(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, renewCertificate: RenewCertificateInputProtocol) -> ReplicationFabricsRenewCertificate {
        return RenewCertificateCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, renewCertificate: renewCertificate)
    }
}
}
