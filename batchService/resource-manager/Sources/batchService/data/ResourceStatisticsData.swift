// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ResourceStatisticsData : ResourceStatisticsProtocol {
    public var startTime: Date
    public var lastUpdateTime: Date
    public var avgCPUPercentage: Double
    public var avgMemoryGiB: Double
    public var peakMemoryGiB: Double
    public var avgDiskGiB: Double
    public var peakDiskGiB: Double
    public var diskReadIOps: Int64
    public var diskWriteIOps: Int64
    public var diskReadGiB: Double
    public var diskWriteGiB: Double
    public var networkReadGiB: Double
    public var networkWriteGiB: Double

        enum CodingKeys: String, CodingKey {case startTime = "startTime"
        case lastUpdateTime = "lastUpdateTime"
        case avgCPUPercentage = "avgCPUPercentage"
        case avgMemoryGiB = "avgMemoryGiB"
        case peakMemoryGiB = "peakMemoryGiB"
        case avgDiskGiB = "avgDiskGiB"
        case peakDiskGiB = "peakDiskGiB"
        case diskReadIOps = "diskReadIOps"
        case diskWriteIOps = "diskWriteIOps"
        case diskReadGiB = "diskReadGiB"
        case diskWriteGiB = "diskWriteGiB"
        case networkReadGiB = "networkReadGiB"
        case networkWriteGiB = "networkWriteGiB"
        }

  public init(startTime: Date, lastUpdateTime: Date, avgCPUPercentage: Double, avgMemoryGiB: Double, peakMemoryGiB: Double, avgDiskGiB: Double, peakDiskGiB: Double, diskReadIOps: Int64, diskWriteIOps: Int64, diskReadGiB: Double, diskWriteGiB: Double, networkReadGiB: Double, networkWriteGiB: Double)  {
    self.startTime = startTime
    self.lastUpdateTime = lastUpdateTime
    self.avgCPUPercentage = avgCPUPercentage
    self.avgMemoryGiB = avgMemoryGiB
    self.peakMemoryGiB = peakMemoryGiB
    self.avgDiskGiB = avgDiskGiB
    self.peakDiskGiB = peakDiskGiB
    self.diskReadIOps = diskReadIOps
    self.diskWriteIOps = diskWriteIOps
    self.diskReadGiB = diskReadGiB
    self.diskWriteGiB = diskWriteGiB
    self.networkReadGiB = networkReadGiB
    self.networkWriteGiB = networkWriteGiB
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
          self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)!
        self.lastUpdateTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastUpdateTime)), format: .dateTime)!
    self.avgCPUPercentage = try container.decode(Double.self, forKey: .avgCPUPercentage)
    self.avgMemoryGiB = try container.decode(Double.self, forKey: .avgMemoryGiB)
    self.peakMemoryGiB = try container.decode(Double.self, forKey: .peakMemoryGiB)
    self.avgDiskGiB = try container.decode(Double.self, forKey: .avgDiskGiB)
    self.peakDiskGiB = try container.decode(Double.self, forKey: .peakDiskGiB)
    self.diskReadIOps = try container.decode(Int64.self, forKey: .diskReadIOps)
    self.diskWriteIOps = try container.decode(Int64.self, forKey: .diskWriteIOps)
    self.diskReadGiB = try container.decode(Double.self, forKey: .diskReadGiB)
    self.diskWriteGiB = try container.decode(Double.self, forKey: .diskWriteGiB)
    self.networkReadGiB = try container.decode(Double.self, forKey: .networkReadGiB)
    self.networkWriteGiB = try container.decode(Double.self, forKey: .networkWriteGiB)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(DateConverter.toString(date: self.startTime, format: .dateTime), forKey: .startTime)
    try container.encode(DateConverter.toString(date: self.lastUpdateTime, format: .dateTime), forKey: .lastUpdateTime)
    try container.encode(self.avgCPUPercentage, forKey: .avgCPUPercentage)
    try container.encode(self.avgMemoryGiB, forKey: .avgMemoryGiB)
    try container.encode(self.peakMemoryGiB, forKey: .peakMemoryGiB)
    try container.encode(self.avgDiskGiB, forKey: .avgDiskGiB)
    try container.encode(self.peakDiskGiB, forKey: .peakDiskGiB)
    try container.encode(self.diskReadIOps, forKey: .diskReadIOps)
    try container.encode(self.diskWriteIOps, forKey: .diskWriteIOps)
    try container.encode(self.diskReadGiB, forKey: .diskReadGiB)
    try container.encode(self.diskWriteGiB, forKey: .diskWriteGiB)
    try container.encode(self.networkReadGiB, forKey: .networkReadGiB)
    try container.encode(self.networkWriteGiB, forKey: .networkWriteGiB)
  }
}

extension DataFactory {
  public static func createResourceStatisticsProtocol(startTime: Date, lastUpdateTime: Date, avgCPUPercentage: Double, avgMemoryGiB: Double, peakMemoryGiB: Double, avgDiskGiB: Double, peakDiskGiB: Double, diskReadIOps: Int64, diskWriteIOps: Int64, diskReadGiB: Double, diskWriteGiB: Double, networkReadGiB: Double, networkWriteGiB: Double) -> ResourceStatisticsProtocol {
    return ResourceStatisticsData(startTime: startTime, lastUpdateTime: lastUpdateTime, avgCPUPercentage: avgCPUPercentage, avgMemoryGiB: avgMemoryGiB, peakMemoryGiB: peakMemoryGiB, avgDiskGiB: avgDiskGiB, peakDiskGiB: peakDiskGiB, diskReadIOps: diskReadIOps, diskWriteIOps: diskWriteIOps, diskReadGiB: diskReadGiB, diskWriteGiB: diskWriteGiB, networkReadGiB: networkReadGiB, networkWriteGiB: networkWriteGiB)
  }
}
