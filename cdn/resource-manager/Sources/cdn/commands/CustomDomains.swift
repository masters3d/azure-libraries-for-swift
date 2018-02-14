// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// CustomDomains is the use these APIs to manage Azure CDN resources through the Azure Resource Manager. You must make
// sure that requests made to these resources are secure.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct CustomDomains {
    public static func Create(resourceGroupName: String, profileName: String, endpointName: String, customDomainName: String, subscriptionId: String, customDomainProperties: CustomDomainParametersProtocol) -> CustomDomainsCreate {
        return CreateCommand(resourceGroupName: resourceGroupName, profileName: profileName, endpointName: endpointName, customDomainName: customDomainName, subscriptionId: subscriptionId, customDomainProperties: customDomainProperties)
    }
    public static func Delete(resourceGroupName: String, profileName: String, endpointName: String, customDomainName: String, subscriptionId: String) -> CustomDomainsDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, profileName: profileName, endpointName: endpointName, customDomainName: customDomainName, subscriptionId: subscriptionId)
    }
    public static func DisableCustomHttps(resourceGroupName: String, profileName: String, endpointName: String, customDomainName: String, subscriptionId: String) -> CustomDomainsDisableCustomHttps {
        return DisableCustomHttpsCommand(resourceGroupName: resourceGroupName, profileName: profileName, endpointName: endpointName, customDomainName: customDomainName, subscriptionId: subscriptionId)
    }
    public static func EnableCustomHttps(resourceGroupName: String, profileName: String, endpointName: String, customDomainName: String, subscriptionId: String) -> CustomDomainsEnableCustomHttps {
        return EnableCustomHttpsCommand(resourceGroupName: resourceGroupName, profileName: profileName, endpointName: endpointName, customDomainName: customDomainName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, profileName: String, endpointName: String, customDomainName: String, subscriptionId: String) -> CustomDomainsGet {
        return GetCommand(resourceGroupName: resourceGroupName, profileName: profileName, endpointName: endpointName, customDomainName: customDomainName, subscriptionId: subscriptionId)
    }
    public static func ListByEndpoint(resourceGroupName: String, profileName: String, endpointName: String, subscriptionId: String) -> CustomDomainsListByEndpoint {
        return ListByEndpointCommand(resourceGroupName: resourceGroupName, profileName: profileName, endpointName: endpointName, subscriptionId: subscriptionId)
    }
}
}
