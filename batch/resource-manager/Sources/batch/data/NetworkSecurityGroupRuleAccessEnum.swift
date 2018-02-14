// NetworkSecurityGroupRuleAccess enumerates the values for network security group rule access.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum NetworkSecurityGroupRuleAccessEnum: String, Codable
{
// Allow specifies the allow state for network security group rule access.
    case Allow = "Allow"
// Deny specifies the deny state for network security group rule access.
    case Deny = "Deny"
}
