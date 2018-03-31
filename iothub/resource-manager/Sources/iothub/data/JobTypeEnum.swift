// JobType enumerates the values for job type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum JobTypeEnum: String, Codable {
// JobTypeBackup specifies the job type backup state for job type.
    case JobTypeBackup = "backup"
// JobTypeExport specifies the job type export state for job type.
    case JobTypeExport = "export"
// JobTypeFactoryResetDevice specifies the job type factory reset device state for job type.
    case JobTypeFactoryResetDevice = "factoryResetDevice"
// JobTypeFirmwareUpdate specifies the job type firmware update state for job type.
    case JobTypeFirmwareUpdate = "firmwareUpdate"
// JobTypeImport specifies the job type import state for job type.
    case JobTypeImport = "import"
// JobTypeReadDeviceProperties specifies the job type read device properties state for job type.
    case JobTypeReadDeviceProperties = "readDeviceProperties"
// JobTypeRebootDevice specifies the job type reboot device state for job type.
    case JobTypeRebootDevice = "rebootDevice"
// JobTypeUnknown specifies the job type unknown state for job type.
    case JobTypeUnknown = "unknown"
// JobTypeUpdateDeviceConfiguration specifies the job type update device configuration state for job type.
    case JobTypeUpdateDeviceConfiguration = "updateDeviceConfiguration"
// JobTypeWriteDeviceProperties specifies the job type write device properties state for job type.
    case JobTypeWriteDeviceProperties = "writeDeviceProperties"
}
