// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UsageData : UsageProtocol {
    public var unit: UnitTypeEnum?
    public var name: MetricNameProtocol?
    public var quotaPeriod: String?
    public var limit: Int32?
    public var currentValue: Int32?

        enum CodingKeys: String, CodingKey {case unit = "unit"
        case name = "name"
        case quotaPeriod = "quotaPeriod"
        case limit = "limit"
        case currentValue = "currentValue"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.unit) {
        self.unit = try container.decode(UnitTypeEnum?.self, forKey: .unit)
    }
    if container.contains(.name) {
        self.name = try container.decode(MetricNameData?.self, forKey: .name)
    }
    if container.contains(.quotaPeriod) {
        self.quotaPeriod = try container.decode(String?.self, forKey: .quotaPeriod)
    }
    if container.contains(.limit) {
        self.limit = try container.decode(Int32?.self, forKey: .limit)
    }
    if container.contains(.currentValue) {
        self.currentValue = try container.decode(Int32?.self, forKey: .currentValue)
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
    if self.name != nil {try container.encode(self.name as! MetricNameData?, forKey: .name)}
    if self.quotaPeriod != nil {try container.encode(self.quotaPeriod, forKey: .quotaPeriod)}
    if self.limit != nil {try container.encode(self.limit, forKey: .limit)}
    if self.currentValue != nil {try container.encode(self.currentValue, forKey: .currentValue)}
  }
}

extension DataFactory {
  public static func createUsageProtocol() -> UsageProtocol {
    return UsageData()
  }
}
