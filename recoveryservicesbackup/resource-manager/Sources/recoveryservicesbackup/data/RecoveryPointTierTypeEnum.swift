// RecoveryPointTierType enumerates the values for recovery point tier type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum RecoveryPointTierTypeEnum: String, Codable
{
// RecoveryPointTierTypeHardenedRP specifies the recovery point tier type hardened rp state for recovery point tier
// type.
    case RecoveryPointTierTypeHardenedRP = "HardenedRP"
// RecoveryPointTierTypeInstantRP specifies the recovery point tier type instant rp state for recovery point tier type.
    case RecoveryPointTierTypeInstantRP = "InstantRP"
// RecoveryPointTierTypeInvalid specifies the recovery point tier type invalid state for recovery point tier type.
    case RecoveryPointTierTypeInvalid = "Invalid"
}
