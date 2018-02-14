// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Namespaces is the azure Event Hubs client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Namespaces {
    public static func CheckNameAvailability(subscriptionId: String, parameters: CheckNameAvailabilityParameterProtocol) -> NamespacesCheckNameAvailability {
        return CheckNameAvailabilityCommand(subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func CreateOrUpdate(resourceGroupName: String, namespaceName: String, subscriptionId: String, parameters: EHNamespaceProtocol) -> NamespacesCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func CreateOrUpdateAuthorizationRule(resourceGroupName: String, namespaceName: String, authorizationRuleName: String, subscriptionId: String, parameters: AuthorizationRuleProtocol) -> NamespacesCreateOrUpdateAuthorizationRule {
        return CreateOrUpdateAuthorizationRuleCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, authorizationRuleName: authorizationRuleName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, namespaceName: String, subscriptionId: String) -> NamespacesDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, subscriptionId: subscriptionId)
    }
    public static func DeleteAuthorizationRule(resourceGroupName: String, namespaceName: String, authorizationRuleName: String, subscriptionId: String) -> NamespacesDeleteAuthorizationRule {
        return DeleteAuthorizationRuleCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, authorizationRuleName: authorizationRuleName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, namespaceName: String, subscriptionId: String) -> NamespacesGet {
        return GetCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, subscriptionId: subscriptionId)
    }
    public static func GetAuthorizationRule(resourceGroupName: String, namespaceName: String, authorizationRuleName: String, subscriptionId: String) -> NamespacesGetAuthorizationRule {
        return GetAuthorizationRuleCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, authorizationRuleName: authorizationRuleName, subscriptionId: subscriptionId)
    }
    public static func List(subscriptionId: String) -> NamespacesList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListAuthorizationRules(resourceGroupName: String, namespaceName: String, subscriptionId: String) -> NamespacesListAuthorizationRules {
        return ListAuthorizationRulesCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroup(resourceGroupName: String, subscriptionId: String) -> NamespacesListByResourceGroup {
        return ListByResourceGroupCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListKeys(resourceGroupName: String, namespaceName: String, authorizationRuleName: String, subscriptionId: String) -> NamespacesListKeys {
        return ListKeysCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, authorizationRuleName: authorizationRuleName, subscriptionId: subscriptionId)
    }
    public static func RegenerateKeys(resourceGroupName: String, namespaceName: String, authorizationRuleName: String, subscriptionId: String, parameters: RegenerateAccessKeyParametersProtocol) -> NamespacesRegenerateKeys {
        return RegenerateKeysCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, authorizationRuleName: authorizationRuleName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Update(resourceGroupName: String, namespaceName: String, subscriptionId: String, parameters: EHNamespaceProtocol) -> NamespacesUpdate {
        return UpdateCommand(resourceGroupName: resourceGroupName, namespaceName: namespaceName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}
