// RecoveryType enumerates the values for recovery type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum RecoveryTypeEnum: String, Codable
{
// RecoveryTypeAlternateLocation specifies the recovery type alternate location state for recovery type.
    case RecoveryTypeAlternateLocation = "AlternateLocation"
// RecoveryTypeInvalid specifies the recovery type invalid state for recovery type.
    case RecoveryTypeInvalid = "Invalid"
// RecoveryTypeOriginalLocation specifies the recovery type original location state for recovery type.
    case RecoveryTypeOriginalLocation = "OriginalLocation"
// RecoveryTypeRestoreDisks specifies the recovery type restore disks state for recovery type.
    case RecoveryTypeRestoreDisks = "RestoreDisks"
}
