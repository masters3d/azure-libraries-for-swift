// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HybridConnectionLimitsPropertiesData : HybridConnectionLimitsPropertiesProtocol {
    public var current: Int32?
    public var maximum: Int32?

        enum CodingKeys: String, CodingKey {case current = "current"
        case maximum = "maximum"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.current) {
        self.current = try container.decode(Int32?.self, forKey: .current)
    }
    if container.contains(.maximum) {
        self.maximum = try container.decode(Int32?.self, forKey: .maximum)
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
    if self.current != nil {try container.encode(self.current, forKey: .current)}
    if self.maximum != nil {try container.encode(self.maximum, forKey: .maximum)}
  }
}

extension DataFactory {
  public static func createHybridConnectionLimitsPropertiesProtocol() -> HybridConnectionLimitsPropertiesProtocol {
    return HybridConnectionLimitsPropertiesData()
  }
}
