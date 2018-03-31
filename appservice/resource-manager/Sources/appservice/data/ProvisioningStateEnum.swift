// ProvisioningState enumerates the values for provisioning state.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum ProvisioningStateEnum: String, Codable {
// ProvisioningStateCanceled specifies the provisioning state canceled state for provisioning state.
    case ProvisioningStateCanceled = "Canceled"
// ProvisioningStateDeleting specifies the provisioning state deleting state for provisioning state.
    case ProvisioningStateDeleting = "Deleting"
// ProvisioningStateFailed specifies the provisioning state failed state for provisioning state.
    case ProvisioningStateFailed = "Failed"
// ProvisioningStateInProgress specifies the provisioning state in progress state for provisioning state.
    case ProvisioningStateInProgress = "InProgress"
// ProvisioningStateSucceeded specifies the provisioning state succeeded state for provisioning state.
    case ProvisioningStateSucceeded = "Succeeded"
}
