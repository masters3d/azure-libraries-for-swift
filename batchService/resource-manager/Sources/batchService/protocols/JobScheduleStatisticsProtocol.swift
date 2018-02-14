// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobScheduleStatisticsProtocol is
public protocol JobScheduleStatisticsProtocol : Codable {
     var url: String { get set }
     var startTime: Date { get set }
     var lastUpdateTime: Date { get set }
     var userCPUTime: String { get set }
     var kernelCPUTime: String { get set }
     var wallClockTime: String { get set }
     var readIOps: Int64 { get set }
     var writeIOps: Int64 { get set }
     var readIOGiB: Double { get set }
     var writeIOGiB: Double { get set }
     var numSucceededTasks: Int64 { get set }
     var numFailedTasks: Int64 { get set }
     var numTaskRetries: Int64 { get set }
     var waitTime: String { get set }
}
