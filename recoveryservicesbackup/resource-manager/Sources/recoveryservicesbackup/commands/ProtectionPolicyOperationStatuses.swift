// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ProtectionPolicyOperationStatuses is the open API 2.0 Specs for Azure RecoveryServices Backup service
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ProtectionPolicyOperationStatuses {
    public static func Get(vaultName: String, resourceGroupName: String, subscriptionId: String, policyName: String, operationId: String) -> ProtectionPolicyOperationStatusesGet {
        return GetCommand(vaultName: vaultName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, policyName: policyName, operationId: operationId)
    }
}
}
