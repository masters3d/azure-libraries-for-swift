// ProvisioningState enumerates the values for provisioning state.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum ProvisioningStateEnum: String, Codable {
// Creating specifies the creating state for provisioning state.
    case Creating = "Creating"
// Deleting specifies the deleting state for provisioning state.
    case Deleting = "Deleting"
// Failed specifies the failed state for provisioning state.
    case Failed = "Failed"
// Moving specifies the moving state for provisioning state.
    case Moving = "Moving"
// ResolvingDNS specifies the resolving dns state for provisioning state.
    case ResolvingDNS = "ResolvingDNS"
// Succeeded specifies the succeeded state for provisioning state.
    case Succeeded = "Succeeded"
}
