// LastBackupStatus enumerates the values for last backup status.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum LastBackupStatusEnum: String, Codable
{
// LastBackupStatusHealthy specifies the last backup status healthy state for last backup status.
    case LastBackupStatusHealthy = "Healthy"
// LastBackupStatusInvalid specifies the last backup status invalid state for last backup status.
    case LastBackupStatusInvalid = "Invalid"
// LastBackupStatusIRPending specifies the last backup status ir pending state for last backup status.
    case LastBackupStatusIRPending = "IRPending"
// LastBackupStatusUnhealthy specifies the last backup status unhealthy state for last backup status.
    case LastBackupStatusUnhealthy = "Unhealthy"
}
