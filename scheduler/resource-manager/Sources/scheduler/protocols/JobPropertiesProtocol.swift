// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobPropertiesProtocol is
public protocol JobPropertiesProtocol : Codable {
     var startTime: Date? { get set }
     var action: JobActionProtocol? { get set }
     var recurrence: JobRecurrenceProtocol? { get set }
     var state: JobStateEnum? { get set }
     var status: JobStatusProtocol? { get set }
}
