// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ElasticPoolDtuCapabilityData : ElasticPoolDtuCapabilityProtocol {
    public var limit: Int64?
    public var maxDatabaseCount: Int64?
    public var status: CapabilityStatusEnum?
    public var supportedMaxSizes: [MaxSizeCapabilityProtocol?]?
    public var includedMaxSize: MaxSizeCapabilityProtocol?
    public var supportedPerDatabaseMaxSizes: [MaxSizeCapabilityProtocol?]?
    public var supportedPerDatabaseMaxDtus: [ElasticPoolPerDatabaseMaxDtuCapabilityProtocol?]?

        enum CodingKeys: String, CodingKey {case limit = "limit"
        case maxDatabaseCount = "maxDatabaseCount"
        case status = "status"
        case supportedMaxSizes = "supportedMaxSizes"
        case includedMaxSize = "includedMaxSize"
        case supportedPerDatabaseMaxSizes = "supportedPerDatabaseMaxSizes"
        case supportedPerDatabaseMaxDtus = "supportedPerDatabaseMaxDtus"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.limit) {
        self.limit = try container.decode(Int64?.self, forKey: .limit)
    }
    if container.contains(.maxDatabaseCount) {
        self.maxDatabaseCount = try container.decode(Int64?.self, forKey: .maxDatabaseCount)
    }
    if container.contains(.status) {
        self.status = try container.decode(CapabilityStatusEnum?.self, forKey: .status)
    }
    if container.contains(.supportedMaxSizes) {
        self.supportedMaxSizes = try container.decode([MaxSizeCapabilityData?]?.self, forKey: .supportedMaxSizes)
    }
    if container.contains(.includedMaxSize) {
        self.includedMaxSize = try container.decode(MaxSizeCapabilityData?.self, forKey: .includedMaxSize)
    }
    if container.contains(.supportedPerDatabaseMaxSizes) {
        self.supportedPerDatabaseMaxSizes = try container.decode([MaxSizeCapabilityData?]?.self, forKey: .supportedPerDatabaseMaxSizes)
    }
    if container.contains(.supportedPerDatabaseMaxDtus) {
        self.supportedPerDatabaseMaxDtus = try container.decode([ElasticPoolPerDatabaseMaxDtuCapabilityData?]?.self, forKey: .supportedPerDatabaseMaxDtus)
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
    if self.limit != nil {try container.encode(self.limit, forKey: .limit)}
    if self.maxDatabaseCount != nil {try container.encode(self.maxDatabaseCount, forKey: .maxDatabaseCount)}
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.supportedMaxSizes != nil {try container.encode(self.supportedMaxSizes as! [MaxSizeCapabilityData?]?, forKey: .supportedMaxSizes)}
    if self.includedMaxSize != nil {try container.encode(self.includedMaxSize as! MaxSizeCapabilityData?, forKey: .includedMaxSize)}
    if self.supportedPerDatabaseMaxSizes != nil {try container.encode(self.supportedPerDatabaseMaxSizes as! [MaxSizeCapabilityData?]?, forKey: .supportedPerDatabaseMaxSizes)}
    if self.supportedPerDatabaseMaxDtus != nil {try container.encode(self.supportedPerDatabaseMaxDtus as! [ElasticPoolPerDatabaseMaxDtuCapabilityData?]?, forKey: .supportedPerDatabaseMaxDtus)}
  }
}

extension DataFactory {
  public static func createElasticPoolDtuCapabilityProtocol() -> ElasticPoolDtuCapabilityProtocol {
    return ElasticPoolDtuCapabilityData()
  }
}