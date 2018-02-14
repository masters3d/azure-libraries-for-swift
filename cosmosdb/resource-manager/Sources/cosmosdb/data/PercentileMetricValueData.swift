// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PercentileMetricValueData : PercentileMetricValueProtocol, MetricValueProtocol {
    public var _count: Double?
    public var average: Double?
    public var maximum: Double?
    public var minimum: Double?
    public var timestamp: Date?
    public var total: Double?
    public var p10: Double?
    public var p25: Double?
    public var p50: Double?
    public var p75: Double?
    public var p90: Double?
    public var p95: Double?
    public var p99: Double?

        enum CodingKeys: String, CodingKey {case _count = "_count"
        case average = "average"
        case maximum = "maximum"
        case minimum = "minimum"
        case timestamp = "timestamp"
        case total = "total"
        case p10 = "P10"
        case p25 = "P25"
        case p50 = "P50"
        case p75 = "P75"
        case p90 = "P90"
        case p95 = "P95"
        case p99 = "P99"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(._count) {
        self._count = try container.decode(Double?.self, forKey: ._count)
    }
    if container.contains(.average) {
        self.average = try container.decode(Double?.self, forKey: .average)
    }
    if container.contains(.maximum) {
        self.maximum = try container.decode(Double?.self, forKey: .maximum)
    }
    if container.contains(.minimum) {
        self.minimum = try container.decode(Double?.self, forKey: .minimum)
    }
    if container.contains(.timestamp) {
        self.timestamp = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .timestamp)), format: .dateTime)
    }
    if container.contains(.total) {
        self.total = try container.decode(Double?.self, forKey: .total)
    }
    if container.contains(.p10) {
        self.p10 = try container.decode(Double?.self, forKey: .p10)
    }
    if container.contains(.p25) {
        self.p25 = try container.decode(Double?.self, forKey: .p25)
    }
    if container.contains(.p50) {
        self.p50 = try container.decode(Double?.self, forKey: .p50)
    }
    if container.contains(.p75) {
        self.p75 = try container.decode(Double?.self, forKey: .p75)
    }
    if container.contains(.p90) {
        self.p90 = try container.decode(Double?.self, forKey: .p90)
    }
    if container.contains(.p95) {
        self.p95 = try container.decode(Double?.self, forKey: .p95)
    }
    if container.contains(.p99) {
        self.p99 = try container.decode(Double?.self, forKey: .p99)
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
    if self._count != nil {try container.encode(self._count, forKey: ._count)}
    if self.average != nil {try container.encode(self.average, forKey: .average)}
    if self.maximum != nil {try container.encode(self.maximum, forKey: .maximum)}
    if self.minimum != nil {try container.encode(self.minimum, forKey: .minimum)}
    if self.timestamp != nil {
        try container.encode(DateConverter.toString(date: self.timestamp!, format: .dateTime), forKey: .timestamp)
    }
    if self.total != nil {try container.encode(self.total, forKey: .total)}
    if self.p10 != nil {try container.encode(self.p10, forKey: .p10)}
    if self.p25 != nil {try container.encode(self.p25, forKey: .p25)}
    if self.p50 != nil {try container.encode(self.p50, forKey: .p50)}
    if self.p75 != nil {try container.encode(self.p75, forKey: .p75)}
    if self.p90 != nil {try container.encode(self.p90, forKey: .p90)}
    if self.p95 != nil {try container.encode(self.p95, forKey: .p95)}
    if self.p99 != nil {try container.encode(self.p99, forKey: .p99)}
  }
}

extension DataFactory {
  public static func createPercentileMetricValueProtocol() -> PercentileMetricValueProtocol {
    return PercentileMetricValueData()
  }
}
