// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ProcessThreadInfoPropertiesProtocol is processThreadInfo resource specific properties
public protocol ProcessThreadInfoPropertiesProtocol : Codable {
     var id: Int32? { get set }
     var href: String? { get set }
     var process: String? { get set }
     var startAddress: String? { get set }
     var currentPriority: Int32? { get set }
     var priorityLevel: String? { get set }
     var basePriority: Int32? { get set }
     var startTime: Date? { get set }
     var totalProcessorTime: String? { get set }
     var userProcessorTime: String? { get set }
     var priviledgedProcessorTime: String? { get set }
     var state: String? { get set }
     var waitReason: String? { get set }
}
