// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ScheduleEntryData : ScheduleEntryProtocol {
    public var dayOfWeek: DayOfWeekEnum
    public var startHourUtc: Int32
    public var maintenanceWindow: String?

        enum CodingKeys: String, CodingKey {case dayOfWeek = "dayOfWeek"
        case startHourUtc = "startHourUtc"
        case maintenanceWindow = "maintenanceWindow"
        }

  public init(dayOfWeek: DayOfWeekEnum, startHourUtc: Int32)  {
    self.dayOfWeek = dayOfWeek
    self.startHourUtc = startHourUtc
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.dayOfWeek = try container.decode(DayOfWeekEnum.self, forKey: .dayOfWeek)
    self.startHourUtc = try container.decode(Int32.self, forKey: .startHourUtc)
    if container.contains(.maintenanceWindow) {
        self.maintenanceWindow = try container.decode(String?.self, forKey: .maintenanceWindow)
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
    try container.encode(self.dayOfWeek, forKey: .dayOfWeek)
    try container.encode(self.startHourUtc, forKey: .startHourUtc)
    if self.maintenanceWindow != nil {try container.encode(self.maintenanceWindow, forKey: .maintenanceWindow)}
  }
}

extension DataFactory {
  public static func createScheduleEntryProtocol(dayOfWeek: DayOfWeekEnum, startHourUtc: Int32) -> ScheduleEntryProtocol {
    return ScheduleEntryData(dayOfWeek: dayOfWeek, startHourUtc: startHourUtc)
  }
}
