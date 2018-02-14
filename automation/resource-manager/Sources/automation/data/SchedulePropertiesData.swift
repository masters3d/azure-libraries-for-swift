// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SchedulePropertiesData : SchedulePropertiesProtocol {
    public var startTime: Date?
    public var startTimeOffsetMinutes: Double?
    public var expiryTime: Date?
    public var expiryTimeOffsetMinutes: Double?
    public var isEnabled: Bool?
    public var nextRun: Date?
    public var nextRunOffsetMinutes: Double?
    public var interval: [String: String?]?
    public var frequency: ScheduleFrequencyEnum?
    public var timeZone: String?
    public var advancedSchedule: AdvancedScheduleProtocol?
    public var creationTime: Date?
    public var lastModifiedTime: Date?
    public var description: String?

        enum CodingKeys: String, CodingKey {case startTime = "startTime"
        case startTimeOffsetMinutes = "startTimeOffsetMinutes"
        case expiryTime = "expiryTime"
        case expiryTimeOffsetMinutes = "expiryTimeOffsetMinutes"
        case isEnabled = "isEnabled"
        case nextRun = "nextRun"
        case nextRunOffsetMinutes = "nextRunOffsetMinutes"
        case interval = "interval"
        case frequency = "frequency"
        case timeZone = "timeZone"
        case advancedSchedule = "advancedSchedule"
        case creationTime = "creationTime"
        case lastModifiedTime = "lastModifiedTime"
        case description = "description"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.startTimeOffsetMinutes) {
        self.startTimeOffsetMinutes = try container.decode(Double?.self, forKey: .startTimeOffsetMinutes)
    }
    if container.contains(.expiryTime) {
        self.expiryTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .expiryTime)), format: .dateTime)
    }
    if container.contains(.expiryTimeOffsetMinutes) {
        self.expiryTimeOffsetMinutes = try container.decode(Double?.self, forKey: .expiryTimeOffsetMinutes)
    }
    if container.contains(.isEnabled) {
        self.isEnabled = try container.decode(Bool?.self, forKey: .isEnabled)
    }
    if container.contains(.nextRun) {
        self.nextRun = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .nextRun)), format: .dateTime)
    }
    if container.contains(.nextRunOffsetMinutes) {
        self.nextRunOffsetMinutes = try container.decode(Double?.self, forKey: .nextRunOffsetMinutes)
    }
    if container.contains(.interval) {
        self.interval = try container.decode([String: String?]?.self, forKey: .interval)
    }
    if container.contains(.frequency) {
        self.frequency = try container.decode(ScheduleFrequencyEnum?.self, forKey: .frequency)
    }
    if container.contains(.timeZone) {
        self.timeZone = try container.decode(String?.self, forKey: .timeZone)
    }
    if container.contains(.advancedSchedule) {
        self.advancedSchedule = try container.decode(AdvancedScheduleData?.self, forKey: .advancedSchedule)
    }
    if container.contains(.creationTime) {
        self.creationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .creationTime)), format: .dateTime)
    }
    if container.contains(.lastModifiedTime) {
        self.lastModifiedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastModifiedTime)), format: .dateTime)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
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
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.startTimeOffsetMinutes != nil {try container.encode(self.startTimeOffsetMinutes, forKey: .startTimeOffsetMinutes)}
    if self.expiryTime != nil {
        try container.encode(DateConverter.toString(date: self.expiryTime!, format: .dateTime), forKey: .expiryTime)
    }
    if self.expiryTimeOffsetMinutes != nil {try container.encode(self.expiryTimeOffsetMinutes, forKey: .expiryTimeOffsetMinutes)}
    if self.isEnabled != nil {try container.encode(self.isEnabled, forKey: .isEnabled)}
    if self.nextRun != nil {
        try container.encode(DateConverter.toString(date: self.nextRun!, format: .dateTime), forKey: .nextRun)
    }
    if self.nextRunOffsetMinutes != nil {try container.encode(self.nextRunOffsetMinutes, forKey: .nextRunOffsetMinutes)}
    if self.interval != nil {try container.encode(self.interval, forKey: .interval)}
    if self.frequency != nil {try container.encode(self.frequency, forKey: .frequency)}
    if self.timeZone != nil {try container.encode(self.timeZone, forKey: .timeZone)}
    if self.advancedSchedule != nil {try container.encode(self.advancedSchedule as! AdvancedScheduleData?, forKey: .advancedSchedule)}
    if self.creationTime != nil {
        try container.encode(DateConverter.toString(date: self.creationTime!, format: .dateTime), forKey: .creationTime)
    }
    if self.lastModifiedTime != nil {
        try container.encode(DateConverter.toString(date: self.lastModifiedTime!, format: .dateTime), forKey: .lastModifiedTime)
    }
    if self.description != nil {try container.encode(self.description, forKey: .description)}
  }
}

extension DataFactory {
  public static func createSchedulePropertiesProtocol() -> SchedulePropertiesProtocol {
    return SchedulePropertiesData()
  }
}
