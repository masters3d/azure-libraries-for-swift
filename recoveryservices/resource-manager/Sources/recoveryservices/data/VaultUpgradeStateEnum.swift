// VaultUpgradeState enumerates the values for vault upgrade state.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum VaultUpgradeStateEnum: String, Codable
{
// Failed specifies the failed state for vault upgrade state.
    case Failed = "Failed"
// InProgress specifies the in progress state for vault upgrade state.
    case InProgress = "InProgress"
// Unknown specifies the unknown state for vault upgrade state.
    case Unknown = "Unknown"
// Upgraded specifies the upgraded state for vault upgrade state.
    case Upgraded = "Upgraded"
}
