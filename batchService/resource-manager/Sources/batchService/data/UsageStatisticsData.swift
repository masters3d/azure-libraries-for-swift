// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UsageStatisticsData : UsageStatisticsProtocol {
    public var startTime: Date
    public var lastUpdateTime: Date
    public var dedicatedCoreTime: String

        enum CodingKeys: String, CodingKey {case startTime = "startTime"
        case lastUpdateTime = "lastUpdateTime"
        case dedicatedCoreTime = "dedicatedCoreTime"
        }

  public init(startTime: Date, lastUpdateTime: Date, dedicatedCoreTime: String)  {
    self.startTime = startTime
    self.lastUpdateTime = lastUpdateTime
    self.dedicatedCoreTime = dedicatedCoreTime
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
          self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)!
        self.lastUpdateTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastUpdateTime)), format: .dateTime)!
    self.dedicatedCoreTime = try container.decode(String.self, forKey: .dedicatedCoreTime)
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
    try container.encode(self.dedicatedCoreTime, forKey: .dedicatedCoreTime)
  }
}

extension DataFactory {
  public static func createUsageStatisticsProtocol(startTime: Date, lastUpdateTime: Date, dedicatedCoreTime: String) -> UsageStatisticsProtocol {
    return UsageStatisticsData(startTime: startTime, lastUpdateTime: lastUpdateTime, dedicatedCoreTime: dedicatedCoreTime)
  }
}