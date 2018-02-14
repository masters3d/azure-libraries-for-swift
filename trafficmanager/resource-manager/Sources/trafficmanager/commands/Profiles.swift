// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Profiles is the client for the Profiles methods of the TrafficManagerManagementClient service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Profiles {
    public static func CheckTrafficManagerRelativeDnsNameAvailability(parameters: CheckTrafficManagerRelativeDnsNameAvailabilityParametersProtocol) -> ProfilesCheckTrafficManagerRelativeDnsNameAvailability {
        return CheckTrafficManagerRelativeDnsNameAvailabilityCommand(parameters: parameters)
    }
    public static func CreateOrUpdate(resourceGroupName: String, profileName: String, subscriptionId: String, parameters: ProfileProtocol) -> ProfilesCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, profileName: profileName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, profileName: String, subscriptionId: String) -> ProfilesDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, profileName: profileName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, profileName: String, subscriptionId: String) -> ProfilesGet {
        return GetCommand(resourceGroupName: resourceGroupName, profileName: profileName, subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroup(resourceGroupName: String, subscriptionId: String) -> ProfilesListByResourceGroup {
        return ListByResourceGroupCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListBySubscription(subscriptionId: String) -> ProfilesListBySubscription {
        return ListBySubscriptionCommand(subscriptionId: subscriptionId)
    }
    public static func Update(resourceGroupName: String, profileName: String, subscriptionId: String, parameters: ProfileProtocol) -> ProfilesUpdate {
        return UpdateCommand(resourceGroupName: resourceGroupName, profileName: profileName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}
