// SyncMemberState enumerates the values for sync member state.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum SyncMemberStateEnum: String, Codable {
// DeProvisioned specifies the de provisioned state for sync member state.
    case DeProvisioned = "DeProvisioned"
// DeProvisionFailed specifies the de provision failed state for sync member state.
    case DeProvisionFailed = "DeProvisionFailed"
// DeProvisioning specifies the de provisioning state for sync member state.
    case DeProvisioning = "DeProvisioning"
// DisabledBackupRestore specifies the disabled backup restore state for sync member state.
    case DisabledBackupRestore = "DisabledBackupRestore"
// DisabledTombstoneCleanup specifies the disabled tombstone cleanup state for sync member state.
    case DisabledTombstoneCleanup = "DisabledTombstoneCleanup"
// Provisioned specifies the provisioned state for sync member state.
    case Provisioned = "Provisioned"
// ProvisionFailed specifies the provision failed state for sync member state.
    case ProvisionFailed = "ProvisionFailed"
// Provisioning specifies the provisioning state for sync member state.
    case Provisioning = "Provisioning"
// ReprovisionFailed specifies the reprovision failed state for sync member state.
    case ReprovisionFailed = "ReprovisionFailed"
// Reprovisioning specifies the reprovisioning state for sync member state.
    case Reprovisioning = "Reprovisioning"
// SyncCancelled specifies the sync cancelled state for sync member state.
    case SyncCancelled = "SyncCancelled"
// SyncCancelling specifies the sync cancelling state for sync member state.
    case SyncCancelling = "SyncCancelling"
// SyncFailed specifies the sync failed state for sync member state.
    case SyncFailed = "SyncFailed"
// SyncInProgress specifies the sync in progress state for sync member state.
    case SyncInProgress = "SyncInProgress"
// SyncSucceeded specifies the sync succeeded state for sync member state.
    case SyncSucceeded = "SyncSucceeded"
// SyncSucceededWithWarnings specifies the sync succeeded with warnings state for sync member state.
    case SyncSucceededWithWarnings = "SyncSucceededWithWarnings"
// UnProvisioned specifies the un provisioned state for sync member state.
    case UnProvisioned = "UnProvisioned"
// UnReprovisioned specifies the un reprovisioned state for sync member state.
    case UnReprovisioned = "UnReprovisioned"
}
