// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ConnectorMappingAvailabilityData : ConnectorMappingAvailabilityProtocol {
    public var frequency: FrequencyTypesEnum?
    public var interval: Int32

        enum CodingKeys: String, CodingKey {case frequency = "frequency"
        case interval = "interval"
        }

  public init(interval: Int32)  {
    self.interval = interval
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.frequency) {
        self.frequency = try container.decode(FrequencyTypesEnum?.self, forKey: .frequency)
    }
    self.interval = try container.decode(Int32.self, forKey: .interval)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.frequency != nil {try container.encode(self.frequency, forKey: .frequency)}
    try container.encode(self.interval, forKey: .interval)
  }
}

extension DataFactory {
  public static func createConnectorMappingAvailabilityProtocol(interval: Int32) -> ConnectorMappingAvailabilityProtocol {
    return ConnectorMappingAvailabilityData(interval: interval)
  }
}
