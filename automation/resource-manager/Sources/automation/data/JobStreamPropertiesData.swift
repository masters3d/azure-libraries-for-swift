// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobStreamPropertiesData : JobStreamPropertiesProtocol {
    public var jobStreamId: String?
    public var time: Date?
    public var streamType: JobStreamTypeEnum?
    public var streamText: String?
    public var summary: String?
    public var value: [String:[String: String?]]?

        enum CodingKeys: String, CodingKey {case jobStreamId = "jobStreamId"
        case time = "time"
        case streamType = "streamType"
        case streamText = "streamText"
        case summary = "summary"
        case value = "value"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.jobStreamId) {
        self.jobStreamId = try container.decode(String?.self, forKey: .jobStreamId)
    }
    if container.contains(.time) {
        self.time = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .time)), format: .dateTime)
    }
    if container.contains(.streamType) {
        self.streamType = try container.decode(JobStreamTypeEnum?.self, forKey: .streamType)
    }
    if container.contains(.streamText) {
        self.streamText = try container.decode(String?.self, forKey: .streamText)
    }
    if container.contains(.summary) {
        self.summary = try container.decode(String?.self, forKey: .summary)
    }
    if container.contains(.value) {
        self.value = try container.decode([String:[String: String?]]?.self, forKey: .value)
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
    if self.jobStreamId != nil {try container.encode(self.jobStreamId, forKey: .jobStreamId)}
    if self.time != nil {
        try container.encode(DateConverter.toString(date: self.time!, format: .dateTime), forKey: .time)
    }
    if self.streamType != nil {try container.encode(self.streamType, forKey: .streamType)}
    if self.streamText != nil {try container.encode(self.streamText, forKey: .streamText)}
    if self.summary != nil {try container.encode(self.summary, forKey: .summary)}
    if self.value != nil {try container.encode(self.value, forKey: .value)}
  }
}

extension DataFactory {
  public static func createJobStreamPropertiesProtocol() -> JobStreamPropertiesProtocol {
    return JobStreamPropertiesData()
  }
}
