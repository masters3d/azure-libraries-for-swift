// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DailyRetentionScheduleData : DailyRetentionScheduleProtocol {
    public var retentionTimes: [Date]?
    public var retentionDuration: RetentionDurationProtocol?

        enum CodingKeys: String, CodingKey {case retentionTimes = "retentionTimes"
        case retentionDuration = "retentionDuration"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.retentionTimes) {
        self.retentionTimes = try container.decode([Date]?.self, forKey: .retentionTimes)
    }
    if container.contains(.retentionDuration) {
        self.retentionDuration = try container.decode(RetentionDurationData?.self, forKey: .retentionDuration)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.retentionTimes != nil {try container.encode(self.retentionTimes as! [Date]?, forKey: .retentionTimes)}
    if self.retentionDuration != nil {try container.encode(self.retentionDuration as! RetentionDurationData?, forKey: .retentionDuration)}
  }
}

extension DataFactory {
  public static func createDailyRetentionScheduleProtocol() -> DailyRetentionScheduleProtocol {
    return DailyRetentionScheduleData()
  }
}
