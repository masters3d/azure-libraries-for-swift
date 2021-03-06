// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ResourceUsageData : ResourceUsageProtocol {
    public var resourceType: String?
    public var unit: String?
    public var currentValue: Int32?
    public var limit: Int32?

        enum CodingKeys: String, CodingKey {case resourceType = "resourceType"
        case unit = "unit"
        case currentValue = "currentValue"
        case limit = "limit"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.resourceType) {
        self.resourceType = try container.decode(String?.self, forKey: .resourceType)
    }
    if container.contains(.unit) {
        self.unit = try container.decode(String?.self, forKey: .unit)
    }
    if container.contains(.currentValue) {
        self.currentValue = try container.decode(Int32?.self, forKey: .currentValue)
    }
    if container.contains(.limit) {
        self.limit = try container.decode(Int32?.self, forKey: .limit)
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
    if self.resourceType != nil {try container.encode(self.resourceType, forKey: .resourceType)}
    if self.unit != nil {try container.encode(self.unit, forKey: .unit)}
    if self.currentValue != nil {try container.encode(self.currentValue, forKey: .currentValue)}
    if self.limit != nil {try container.encode(self.limit, forKey: .limit)}
  }
}

extension DataFactory {
  public static func createResourceUsageProtocol() -> ResourceUsageProtocol {
    return ResourceUsageData()
  }
}
