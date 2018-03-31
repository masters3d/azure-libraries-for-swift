// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SimpleSchedulePolicyData : SimpleSchedulePolicyProtocol, SchedulePolicyProtocol {
    public var scheduleRunFrequency: ScheduleRunTypeEnum?
    public var scheduleRunDays: [DayOfWeekEnum?]?
    public var scheduleRunTimes: [Date]?
    public var scheduleWeeklyFrequency: Int32?

        enum CodingKeys: String, CodingKey {case scheduleRunFrequency = "scheduleRunFrequency"
        case scheduleRunDays = "scheduleRunDays"
        case scheduleRunTimes = "scheduleRunTimes"
        case scheduleWeeklyFrequency = "scheduleWeeklyFrequency"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.scheduleRunFrequency) {
        self.scheduleRunFrequency = try container.decode(ScheduleRunTypeEnum?.self, forKey: .scheduleRunFrequency)
    }
    if container.contains(.scheduleRunDays) {
        self.scheduleRunDays = try container.decode([DayOfWeekEnum?]?.self, forKey: .scheduleRunDays)
    }
    if container.contains(.scheduleRunTimes) {
        self.scheduleRunTimes = try container.decode([Date]?.self, forKey: .scheduleRunTimes)
    }
    if container.contains(.scheduleWeeklyFrequency) {
        self.scheduleWeeklyFrequency = try container.decode(Int32?.self, forKey: .scheduleWeeklyFrequency)
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
    if self.scheduleRunFrequency != nil {try container.encode(self.scheduleRunFrequency, forKey: .scheduleRunFrequency)}
    if self.scheduleRunDays != nil {try container.encode(self.scheduleRunDays as! [DayOfWeekEnum?]?, forKey: .scheduleRunDays)}
    if self.scheduleRunTimes != nil {try container.encode(self.scheduleRunTimes as! [Date]?, forKey: .scheduleRunTimes)}
    if self.scheduleWeeklyFrequency != nil {try container.encode(self.scheduleWeeklyFrequency, forKey: .scheduleWeeklyFrequency)}
  }
}

extension DataFactory {
  public static func createSimpleSchedulePolicyProtocol() -> SimpleSchedulePolicyProtocol {
    return SimpleSchedulePolicyData()
  }
}
