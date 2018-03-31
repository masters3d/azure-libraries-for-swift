// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MetricData : MetricProtocol {
    public var id: String
    public var type: String
    public var name: LocalizableStringProtocol
    public var unit: UnitEnum
    public var timeseries: [TimeSeriesElementProtocol]

        enum CodingKeys: String, CodingKey {case id = "id"
        case type = "type"
        case name = "name"
        case unit = "unit"
        case timeseries = "timeseries"
        }

  public init(id: String, type: String, name: LocalizableStringProtocol, unit: UnitEnum, timeseries: [TimeSeriesElementProtocol]) {
    self.id = id
    self.type = type
    self.name = name
    self.unit = unit
    self.timeseries = timeseries
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.id = try container.decode(String.self, forKey: .id)
    self.type = try container.decode(String.self, forKey: .type)
    self.name = try container.decode(LocalizableStringData.self, forKey: .name)
    self.unit = try container.decode(UnitEnum.self, forKey: .unit)
    self.timeseries = try container.decode([TimeSeriesElementData].self, forKey: .timeseries)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.id, forKey: .id)
    try container.encode(self.type, forKey: .type)
    try container.encode(self.name as! LocalizableStringData, forKey: .name)
    try container.encode(self.unit, forKey: .unit)
    try container.encode(self.timeseries as! [TimeSeriesElementData], forKey: .timeseries)
  }
}

extension DataFactory {
  public static func createMetricProtocol(id: String, type: String, name: LocalizableStringProtocol, unit: UnitEnum, timeseries: [TimeSeriesElementProtocol]) -> MetricProtocol {
    return MetricData(id: id, type: type, name: name, unit: unit, timeseries: timeseries)
  }
}
