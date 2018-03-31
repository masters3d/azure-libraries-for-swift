// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EndpointPropertiesData : EndpointPropertiesProtocol {
    public var targetResourceId: String?
    public var target: String?
    public var endpointStatus: EndpointStatusEnum?
    public var weight: Int64?
    public var priority: Int64?
    public var endpointLocation: String?
    public var endpointMonitorStatus: EndpointMonitorStatusEnum?
    public var minChildEndpoints: Int64?
    public var geoMapping: [String]?

        enum CodingKeys: String, CodingKey {case targetResourceId = "targetResourceId"
        case target = "target"
        case endpointStatus = "endpointStatus"
        case weight = "weight"
        case priority = "priority"
        case endpointLocation = "endpointLocation"
        case endpointMonitorStatus = "endpointMonitorStatus"
        case minChildEndpoints = "minChildEndpoints"
        case geoMapping = "geoMapping"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.targetResourceId) {
        self.targetResourceId = try container.decode(String?.self, forKey: .targetResourceId)
    }
    if container.contains(.target) {
        self.target = try container.decode(String?.self, forKey: .target)
    }
    if container.contains(.endpointStatus) {
        self.endpointStatus = try container.decode(EndpointStatusEnum?.self, forKey: .endpointStatus)
    }
    if container.contains(.weight) {
        self.weight = try container.decode(Int64?.self, forKey: .weight)
    }
    if container.contains(.priority) {
        self.priority = try container.decode(Int64?.self, forKey: .priority)
    }
    if container.contains(.endpointLocation) {
        self.endpointLocation = try container.decode(String?.self, forKey: .endpointLocation)
    }
    if container.contains(.endpointMonitorStatus) {
        self.endpointMonitorStatus = try container.decode(EndpointMonitorStatusEnum?.self, forKey: .endpointMonitorStatus)
    }
    if container.contains(.minChildEndpoints) {
        self.minChildEndpoints = try container.decode(Int64?.self, forKey: .minChildEndpoints)
    }
    if container.contains(.geoMapping) {
        self.geoMapping = try container.decode([String]?.self, forKey: .geoMapping)
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
    if self.targetResourceId != nil { try container.encode(self.targetResourceId, forKey: .targetResourceId) }
    if self.target != nil { try container.encode(self.target, forKey: .target) }
    if self.endpointStatus != nil { try container.encode(self.endpointStatus, forKey: .endpointStatus) }
    if self.weight != nil { try container.encode(self.weight, forKey: .weight) }
    if self.priority != nil { try container.encode(self.priority, forKey: .priority) }
    if self.endpointLocation != nil { try container.encode(self.endpointLocation, forKey: .endpointLocation) }
    if self.endpointMonitorStatus != nil { try container.encode(self.endpointMonitorStatus, forKey: .endpointMonitorStatus) }
    if self.minChildEndpoints != nil { try container.encode(self.minChildEndpoints, forKey: .minChildEndpoints) }
    if self.geoMapping != nil { try container.encode(self.geoMapping as! [String]?, forKey: .geoMapping) }
  }
}

extension DataFactory {
  public static func createEndpointPropertiesProtocol() -> EndpointPropertiesProtocol {
    return EndpointPropertiesData()
  }
}
