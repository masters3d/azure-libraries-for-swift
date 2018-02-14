// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OperationsMonitoringPropertiesProtocol is the operations monitoring properties for the IoT hub. The possible keys to
// the dictionary are Connections, DeviceTelemetry, C2DCommands, DeviceIdentityOperations, FileUploadOperations,
// Routes, D2CTwinOperations, C2DTwinOperations, TwinQueries, JobsOperations, DirectMethods.
public protocol OperationsMonitoringPropertiesProtocol : Codable {
     var events: [String:OperationMonitoringLevelEnum?]? { get set }
}
