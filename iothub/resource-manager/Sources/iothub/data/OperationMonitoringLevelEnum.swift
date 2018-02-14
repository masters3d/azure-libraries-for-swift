// OperationMonitoringLevel enumerates the values for operation monitoring level.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum OperationMonitoringLevelEnum: String, Codable
{
// OperationMonitoringLevelError specifies the operation monitoring level error state for operation monitoring level.
    case OperationMonitoringLevelError = "Error"
// OperationMonitoringLevelErrorInformation specifies the operation monitoring level error information state for
// operation monitoring level.
    case OperationMonitoringLevelErrorInformation = "Error, Information"
// OperationMonitoringLevelInformation specifies the operation monitoring level information state for operation
// monitoring level.
    case OperationMonitoringLevelInformation = "Information"
// OperationMonitoringLevelNone specifies the operation monitoring level none state for operation monitoring level.
    case OperationMonitoringLevelNone = "None"
}
