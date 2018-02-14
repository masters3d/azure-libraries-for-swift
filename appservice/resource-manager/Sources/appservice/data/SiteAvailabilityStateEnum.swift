// SiteAvailabilityState enumerates the values for site availability state.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum SiteAvailabilityStateEnum: String, Codable
{
// DisasterRecoveryMode specifies the disaster recovery mode state for site availability state.
    case DisasterRecoveryMode = "DisasterRecoveryMode"
// Limited specifies the limited state for site availability state.
    case Limited = "Limited"
// Normal specifies the normal state for site availability state.
    case Normal = "Normal"
}