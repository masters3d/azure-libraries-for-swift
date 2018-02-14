// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UsageData : UsageProtocol {
    public var unit: String?
    public var currentValue: Int32?
    public var limit: Int32?
    public var name: UsageNameProtocol?

        enum CodingKeys: String, CodingKey {case unit = "unit"
        case currentValue = "currentValue"
        case limit = "limit"
        case name = "name"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.unit) {
        self.unit = try container.decode(String?.self, forKey: .unit)
    }
    if container.contains(.currentValue) {
        self.currentValue = try container.decode(Int32?.self, forKey: .currentValue)
    }
    if container.contains(.limit) {
        self.limit = try container.decode(Int32?.self, forKey: .limit)
    }
    if container.contains(.name) {
        self.name = try container.decode(UsageNameData?.self, forKey: .name)
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
    if self.unit != nil {try container.encode(self.unit, forKey: .unit)}
    if self.currentValue != nil {try container.encode(self.currentValue, forKey: .currentValue)}
    if self.limit != nil {try container.encode(self.limit, forKey: .limit)}
    if self.name != nil {try container.encode(self.name as! UsageNameData?, forKey: .name)}
  }
}

extension DataFactory {
  public static func createUsageProtocol() -> UsageProtocol {
    return UsageData()
  }
}
