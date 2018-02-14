// BackupRestoreOperationType enumerates the values for backup restore operation type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum BackupRestoreOperationTypeEnum: String, Codable
{
// BackupRestoreOperationTypeClone specifies the backup restore operation type clone state for backup restore operation
// type.
    case BackupRestoreOperationTypeClone = "Clone"
// BackupRestoreOperationTypeDefault specifies the backup restore operation type default state for backup restore
// operation type.
    case BackupRestoreOperationTypeDefault = "Default"
// BackupRestoreOperationTypeRelocation specifies the backup restore operation type relocation state for backup restore
// operation type.
    case BackupRestoreOperationTypeRelocation = "Relocation"
// BackupRestoreOperationTypeSnapshot specifies the backup restore operation type snapshot state for backup restore
// operation type.
    case BackupRestoreOperationTypeSnapshot = "Snapshot"
}
