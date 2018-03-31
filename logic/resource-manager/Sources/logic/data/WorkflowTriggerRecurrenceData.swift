// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WorkflowTriggerRecurrenceData : WorkflowTriggerRecurrenceProtocol {
    public var frequency: RecurrenceFrequencyEnum?
    public var interval: Int32?
    public var startTime: Date?
    public var endTime: Date?
    public var timeZone: String?
    public var schedule: RecurrenceScheduleProtocol?

        enum CodingKeys: String, CodingKey {case frequency = "frequency"
        case interval = "interval"
        case startTime = "startTime"
        case endTime = "endTime"
        case timeZone = "timeZone"
        case schedule = "schedule"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.frequency) {
        self.frequency = try container.decode(RecurrenceFrequencyEnum?.self, forKey: .frequency)
    }
    if container.contains(.interval) {
        self.interval = try container.decode(Int32?.self, forKey: .interval)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.timeZone) {
        self.timeZone = try container.decode(String?.self, forKey: .timeZone)
    }
    if container.contains(.schedule) {
        self.schedule = try container.decode(RecurrenceScheduleData?.self, forKey: .schedule)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.frequency != nil { try container.encode(self.frequency, forKey: .frequency) }
    if self.interval != nil { try container.encode(self.interval, forKey: .interval) }
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.timeZone != nil { try container.encode(self.timeZone, forKey: .timeZone) }
    if self.schedule != nil { try container.encode(self.schedule as! RecurrenceScheduleData?, forKey: .schedule) }
  }
}

extension DataFactory {
  public static func createWorkflowTriggerRecurrenceProtocol() -> WorkflowTriggerRecurrenceProtocol {
    return WorkflowTriggerRecurrenceData()
  }
}
