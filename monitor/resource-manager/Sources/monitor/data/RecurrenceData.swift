// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RecurrenceData : RecurrenceProtocol {
    public var frequency: RecurrenceFrequencyEnum
    public var schedule: RecurrentScheduleProtocol

        enum CodingKeys: String, CodingKey {case frequency = "frequency"
        case schedule = "schedule"
        }

  public init(frequency: RecurrenceFrequencyEnum, schedule: RecurrentScheduleProtocol)  {
    self.frequency = frequency
    self.schedule = schedule
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.frequency = try container.decode(RecurrenceFrequencyEnum.self, forKey: .frequency)
    self.schedule = try container.decode(RecurrentScheduleData.self, forKey: .schedule)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.frequency, forKey: .frequency)
    try container.encode(self.schedule as! RecurrentScheduleData, forKey: .schedule)
  }
}

extension DataFactory {
  public static func createRecurrenceProtocol(frequency: RecurrenceFrequencyEnum, schedule: RecurrentScheduleProtocol) -> RecurrenceProtocol {
    return RecurrenceData(frequency: frequency, schedule: schedule)
  }
}
