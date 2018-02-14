// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UsageData : UsageProtocol {
    public var unit: String
    public var currentValue: Int32
    public var limit: Int64
    public var name: UsageNameProtocol

        enum CodingKeys: String, CodingKey {case unit = "unit"
        case currentValue = "currentValue"
        case limit = "limit"
        case name = "name"
        }

  public init(unit: String, currentValue: Int32, limit: Int64, name: UsageNameProtocol)  {
    self.unit = unit
    self.currentValue = currentValue
    self.limit = limit
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.unit = try container.decode(String.self, forKey: .unit)
    self.currentValue = try container.decode(Int32.self, forKey: .currentValue)
    self.limit = try container.decode(Int64.self, forKey: .limit)
    self.name = try container.decode(UsageNameData.self, forKey: .name)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.unit, forKey: .unit)
    try container.encode(self.currentValue, forKey: .currentValue)
    try container.encode(self.limit, forKey: .limit)
    try container.encode(self.name as! UsageNameData, forKey: .name)
  }
}

extension DataFactory {
  public static func createUsageProtocol(unit: String, currentValue: Int32, limit: Int64, name: UsageNameProtocol) -> UsageProtocol {
    return UsageData(unit: unit, currentValue: currentValue, limit: limit, name: name)
  }
}