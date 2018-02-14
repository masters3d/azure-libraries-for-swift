// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PerfMonSampleData : PerfMonSampleProtocol {
    public var time: Date?
    public var instanceName: String?
    public var value: Double?
    public var coreCount: Int32?

        enum CodingKeys: String, CodingKey {case time = "time"
        case instanceName = "instanceName"
        case value = "value"
        case coreCount = "coreCount"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.time) {
        self.time = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .time)), format: .dateTime)
    }
    if container.contains(.instanceName) {
        self.instanceName = try container.decode(String?.self, forKey: .instanceName)
    }
    if container.contains(.value) {
        self.value = try container.decode(Double?.self, forKey: .value)
    }
    if container.contains(.coreCount) {
        self.coreCount = try container.decode(Int32?.self, forKey: .coreCount)
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
    if self.time != nil {
        try container.encode(DateConverter.toString(date: self.time!, format: .dateTime), forKey: .time)
    }
    if self.instanceName != nil {try container.encode(self.instanceName, forKey: .instanceName)}
    if self.value != nil {try container.encode(self.value, forKey: .value)}
    if self.coreCount != nil {try container.encode(self.coreCount, forKey: .coreCount)}
  }
}

extension DataFactory {
  public static func createPerfMonSampleProtocol() -> PerfMonSampleProtocol {
    return PerfMonSampleData()
  }
}