// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// LoadBalancerLoadBalancingRules is the network Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct LoadBalancerLoadBalancingRules {
    public static func Get(resourceGroupName: String, loadBalancerName: String, loadBalancingRuleName: String, subscriptionId: String) -> LoadBalancerLoadBalancingRulesGet {
        return GetCommand(resourceGroupName: resourceGroupName, loadBalancerName: loadBalancerName, loadBalancingRuleName: loadBalancingRuleName, subscriptionId: subscriptionId)
    }
    public static func List(resourceGroupName: String, loadBalancerName: String, subscriptionId: String) -> LoadBalancerLoadBalancingRulesList {
        return ListCommand(resourceGroupName: resourceGroupName, loadBalancerName: loadBalancerName, subscriptionId: subscriptionId)
    }
}
}
