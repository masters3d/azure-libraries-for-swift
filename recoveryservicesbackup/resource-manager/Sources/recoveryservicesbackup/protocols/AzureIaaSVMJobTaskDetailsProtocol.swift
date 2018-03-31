// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureIaaSVMJobTaskDetailsProtocol is azure IaaS VM workload-specific job task details.
public protocol AzureIaaSVMJobTaskDetailsProtocol : Codable {
     var taskId: String? { get set }
     var startTime: Date? { get set }
     var endTime: Date? { get set }
     var instanceId: String? { get set }
     var duration: String? { get set }
     var status: String? { get set }
     var progressPercentage: Double? { get set }
}
