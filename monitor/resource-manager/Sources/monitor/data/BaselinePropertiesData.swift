// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BaselinePropertiesData : BaselinePropertiesProtocol {
    public var timespan: String?
    public var interval: String?
    public var aggregation: String?
    public var timestamps: [Date]?
    public var baseline: [BaselineProtocol?]?
    public var metadata: [BaselineMetadataValueProtocol?]?

        enum CodingKeys: String, CodingKey {case timespan = "timespan"
        case interval = "interval"
        case aggregation = "aggregation"
        case timestamps = "timestamps"
        case baseline = "baseline"
        case metadata = "metadata"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.timespan) {
        self.timespan = try container.decode(String?.self, forKey: .timespan)
    }
    if container.contains(.interval) {
        self.interval = try container.decode(String?.self, forKey: .interval)
    }
    if container.contains(.aggregation) {
        self.aggregation = try container.decode(String?.self, forKey: .aggregation)
    }
    if container.contains(.timestamps) {
        self.timestamps = try container.decode([Date]?.self, forKey: .timestamps)
    }
    if container.contains(.baseline) {
        self.baseline = try container.decode([BaselineData?]?.self, forKey: .baseline)
    }
    if container.contains(.metadata) {
        self.metadata = try container.decode([BaselineMetadataValueData?]?.self, forKey: .metadata)
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
    if self.timespan != nil {try container.encode(self.timespan, forKey: .timespan)}
    if self.interval != nil {try container.encode(self.interval, forKey: .interval)}
    if self.aggregation != nil {try container.encode(self.aggregation, forKey: .aggregation)}
    if self.timestamps != nil {try container.encode(self.timestamps as! [Date]?, forKey: .timestamps)}
    if self.baseline != nil {try container.encode(self.baseline as! [BaselineData?]?, forKey: .baseline)}
    if self.metadata != nil {try container.encode(self.metadata as! [BaselineMetadataValueData?]?, forKey: .metadata)}
  }
}

extension DataFactory {
  public static func createBaselinePropertiesProtocol() -> BaselinePropertiesProtocol {
    return BaselinePropertiesData()
  }
}
