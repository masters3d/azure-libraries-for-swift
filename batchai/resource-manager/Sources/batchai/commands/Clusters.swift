// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Clusters is the the Azure BatchAI Management API.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Clusters {
    public static func Create(resourceGroupName: String, clusterName: String, subscriptionId: String, parameters: ClusterCreateParametersProtocol) -> ClustersCreate {
        return CreateCommand(resourceGroupName: resourceGroupName, clusterName: clusterName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, clusterName: String, subscriptionId: String) -> ClustersDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, clusterName: clusterName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, clusterName: String, subscriptionId: String) -> ClustersGet {
        return GetCommand(resourceGroupName: resourceGroupName, clusterName: clusterName, subscriptionId: subscriptionId)
    }
    public static func List(subscriptionId: String) -> ClustersList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroup(resourceGroupName: String, subscriptionId: String) -> ClustersListByResourceGroup {
        return ListByResourceGroupCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListRemoteLoginInformation(resourceGroupName: String, clusterName: String, subscriptionId: String) -> ClustersListRemoteLoginInformation {
        return ListRemoteLoginInformationCommand(resourceGroupName: resourceGroupName, clusterName: clusterName, subscriptionId: subscriptionId)
    }
    public static func Update(resourceGroupName: String, clusterName: String, subscriptionId: String, parameters: ClusterUpdateParametersProtocol) -> ClustersUpdate {
        return UpdateCommand(resourceGroupName: resourceGroupName, clusterName: clusterName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}
