// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ScheduleCreateOrUpdatePropertiesData : ScheduleCreateOrUpdatePropertiesProtocol {
    public var description: String?
    public var startTime: Date
    public var expiryTime: Date?
    public var interval: [String: String?]?
    public var frequency: ScheduleFrequencyEnum
    public var timeZone: String?
    public var advancedSchedule: AdvancedScheduleProtocol?

        enum CodingKeys: String, CodingKey {case description = "description"
        case startTime = "startTime"
        case expiryTime = "expiryTime"
        case interval = "interval"
        case frequency = "frequency"
        case timeZone = "timeZone"
        case advancedSchedule = "advancedSchedule"
        }

  public init(startTime: Date, frequency: ScheduleFrequencyEnum)  {
    self.startTime = startTime
    self.frequency = frequency
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)!
    if container.contains(.expiryTime) {
        self.expiryTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .expiryTime)), format: .dateTime)
    }
    if container.contains(.interval) {
        self.interval = try container.decode([String: String?]?.self, forKey: .interval)
    }
    self.frequency = try container.decode(ScheduleFrequencyEnum.self, forKey: .frequency)
    if container.contains(.timeZone) {
        self.timeZone = try container.decode(String?.self, forKey: .timeZone)
    }
    if container.contains(.advancedSchedule) {
        self.advancedSchedule = try container.decode(AdvancedScheduleData?.self, forKey: .advancedSchedule)
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
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    try container.encode(DateConverter.toString(date: self.startTime, format: .dateTime), forKey: .startTime)
    if self.expiryTime != nil {
        try container.encode(DateConverter.toString(date: self.expiryTime!, format: .dateTime), forKey: .expiryTime)
    }
    if self.interval != nil {try container.encode(self.interval, forKey: .interval)}
    try container.encode(self.frequency, forKey: .frequency)
    if self.timeZone != nil {try container.encode(self.timeZone, forKey: .timeZone)}
    if self.advancedSchedule != nil {try container.encode(self.advancedSchedule as! AdvancedScheduleData?, forKey: .advancedSchedule)}
  }
}

extension DataFactory {
  public static func createScheduleCreateOrUpdatePropertiesProtocol(startTime: Date, frequency: ScheduleFrequencyEnum) -> ScheduleCreateOrUpdatePropertiesProtocol {
    return ScheduleCreateOrUpdatePropertiesData(startTime: startTime, frequency: frequency)
  }
}