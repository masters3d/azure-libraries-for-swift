// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ServiceObjectiveCapabilityData : ServiceObjectiveCapabilityProtocol {
    public var name: String?
    public var status: CapabilityStatusEnum?
    public var performanceLevel: PerformanceLevelProtocol?
    public var id: String?
    public var supportedMaxSizes: [MaxSizeCapabilityProtocol?]?
    public var includedMaxSize: MaxSizeCapabilityProtocol?

        enum CodingKeys: String, CodingKey {case name = "name"
        case status = "status"
        case performanceLevel = "performanceLevel"
        case id = "id"
        case supportedMaxSizes = "supportedMaxSizes"
        case includedMaxSize = "includedMaxSize"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.status) {
        self.status = try container.decode(CapabilityStatusEnum?.self, forKey: .status)
    }
    if container.contains(.performanceLevel) {
        self.performanceLevel = try container.decode(PerformanceLevelData?.self, forKey: .performanceLevel)
    }
    if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.supportedMaxSizes) {
        self.supportedMaxSizes = try container.decode([MaxSizeCapabilityData?]?.self, forKey: .supportedMaxSizes)
    }
    if container.contains(.includedMaxSize) {
        self.includedMaxSize = try container.decode(MaxSizeCapabilityData?.self, forKey: .includedMaxSize)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.performanceLevel != nil {try container.encode(self.performanceLevel as! PerformanceLevelData?, forKey: .performanceLevel)}
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.supportedMaxSizes != nil {try container.encode(self.supportedMaxSizes as! [MaxSizeCapabilityData?]?, forKey: .supportedMaxSizes)}
    if self.includedMaxSize != nil {try container.encode(self.includedMaxSize as! MaxSizeCapabilityData?, forKey: .includedMaxSize)}
  }
}

extension DataFactory {
  public static func createServiceObjectiveCapabilityProtocol() -> ServiceObjectiveCapabilityProtocol {
    return ServiceObjectiveCapabilityData()
  }
}
