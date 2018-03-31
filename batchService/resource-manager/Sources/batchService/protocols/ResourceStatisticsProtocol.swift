// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResourceStatisticsProtocol is
public protocol ResourceStatisticsProtocol : Codable {
     var startTime: Date { get set }
     var lastUpdateTime: Date { get set }
     var avgCPUPercentage: Double { get set }
     var avgMemoryGiB: Double { get set }
     var peakMemoryGiB: Double { get set }
     var avgDiskGiB: Double { get set }
     var peakDiskGiB: Double { get set }
     var diskReadIOps: Int64 { get set }
     var diskWriteIOps: Int64 { get set }
     var diskReadGiB: Double { get set }
     var diskWriteGiB: Double { get set }
     var networkReadGiB: Double { get set }
     var networkWriteGiB: Double { get set }
}
