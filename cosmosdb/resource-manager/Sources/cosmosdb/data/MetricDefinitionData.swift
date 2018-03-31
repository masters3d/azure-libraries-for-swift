// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MetricDefinitionData : MetricDefinitionProtocol {
    public var metricAvailabilities: [MetricAvailabilityProtocol?]?
    public var primaryAggregationType: PrimaryAggregationTypeEnum?
    public var unit: UnitTypeEnum?
    public var resourceUri: String?
    public var name: MetricNameProtocol?

        enum CodingKeys: String, CodingKey {case metricAvailabilities = "metricAvailabilities"
        case primaryAggregationType = "primaryAggregationType"
        case unit = "unit"
        case resourceUri = "resourceUri"
        case name = "name"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.metricAvailabilities) {
        self.metricAvailabilities = try container.decode([MetricAvailabilityData?]?.self, forKey: .metricAvailabilities)
    }
    if container.contains(.primaryAggregationType) {
        self.primaryAggregationType = try container.decode(PrimaryAggregationTypeEnum?.self, forKey: .primaryAggregationType)
    }
    if container.contains(.unit) {
        self.unit = try container.decode(UnitTypeEnum?.self, forKey: .unit)
    }
    if container.contains(.resourceUri) {
        self.resourceUri = try container.decode(String?.self, forKey: .resourceUri)
    }
    if container.contains(.name) {
        self.name = try container.decode(MetricNameData?.self, forKey: .name)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.metricAvailabilities != nil { try container.encode(self.metricAvailabilities as! [MetricAvailabilityData?]?, forKey: .metricAvailabilities) }
    if self.primaryAggregationType != nil { try container.encode(self.primaryAggregationType, forKey: .primaryAggregationType) }
    if self.unit != nil { try container.encode(self.unit, forKey: .unit) }
    if self.resourceUri != nil { try container.encode(self.resourceUri, forKey: .resourceUri) }
    if self.name != nil { try container.encode(self.name as! MetricNameData?, forKey: .name) }
  }
}

extension DataFactory {
  public static func createMetricDefinitionProtocol() -> MetricDefinitionProtocol {
    return MetricDefinitionData()
  }
}
