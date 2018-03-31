// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RecurrenceScheduleOccurrenceData : RecurrenceScheduleOccurrenceProtocol {
    public var day: DayOfWeekEnum?
    public var occurrence: Int32?

        enum CodingKeys: String, CodingKey {case day = "day"
        case occurrence = "occurrence"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.day) {
        self.day = try container.decode(DayOfWeekEnum?.self, forKey: .day)
    }
    if container.contains(.occurrence) {
        self.occurrence = try container.decode(Int32?.self, forKey: .occurrence)
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
    if self.day != nil {try container.encode(self.day, forKey: .day)}
    if self.occurrence != nil {try container.encode(self.occurrence, forKey: .occurrence)}
  }
}

extension DataFactory {
  public static func createRecurrenceScheduleOccurrenceProtocol() -> RecurrenceScheduleOccurrenceProtocol {
    return RecurrenceScheduleOccurrenceData()
  }
}
