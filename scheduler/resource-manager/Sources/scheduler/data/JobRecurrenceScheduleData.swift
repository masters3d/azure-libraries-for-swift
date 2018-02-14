// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobRecurrenceScheduleData : JobRecurrenceScheduleProtocol {
    public var weekDays: [DayOfWeekEnum?]?
    public var hours: [Int32]?
    public var minutes: [Int32]?
    public var monthDays: [Int32]?
    public var monthlyOccurrences: [JobRecurrenceScheduleMonthlyOccurrenceProtocol?]?

        enum CodingKeys: String, CodingKey {case weekDays = "weekDays"
        case hours = "hours"
        case minutes = "minutes"
        case monthDays = "monthDays"
        case monthlyOccurrences = "monthlyOccurrences"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.weekDays) {
        self.weekDays = try container.decode([DayOfWeekEnum?]?.self, forKey: .weekDays)
    }
    if container.contains(.hours) {
        self.hours = try container.decode([Int32]?.self, forKey: .hours)
    }
    if container.contains(.minutes) {
        self.minutes = try container.decode([Int32]?.self, forKey: .minutes)
    }
    if container.contains(.monthDays) {
        self.monthDays = try container.decode([Int32]?.self, forKey: .monthDays)
    }
    if container.contains(.monthlyOccurrences) {
        self.monthlyOccurrences = try container.decode([JobRecurrenceScheduleMonthlyOccurrenceData?]?.self, forKey: .monthlyOccurrences)
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
    if self.weekDays != nil {try container.encode(self.weekDays as! [DayOfWeekEnum?]?, forKey: .weekDays)}
    if self.hours != nil {try container.encode(self.hours as! [Int32]?, forKey: .hours)}
    if self.minutes != nil {try container.encode(self.minutes as! [Int32]?, forKey: .minutes)}
    if self.monthDays != nil {try container.encode(self.monthDays as! [Int32]?, forKey: .monthDays)}
    if self.monthlyOccurrences != nil {try container.encode(self.monthlyOccurrences as! [JobRecurrenceScheduleMonthlyOccurrenceData?]?, forKey: .monthlyOccurrences)}
  }
}

extension DataFactory {
  public static func createJobRecurrenceScheduleProtocol() -> JobRecurrenceScheduleProtocol {
    return JobRecurrenceScheduleData()
  }
}