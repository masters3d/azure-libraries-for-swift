// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ExpressRouteCircuitPeeringPropertiesFormatData : ExpressRouteCircuitPeeringPropertiesFormatProtocol {
    public var peeringType: ExpressRouteCircuitPeeringTypeEnum?
    public var state: ExpressRouteCircuitPeeringStateEnum?
    public var azureASN: Int32?
    public var peerASN: Int64?
    public var primaryPeerAddressPrefix: String?
    public var secondaryPeerAddressPrefix: String?
    public var primaryAzurePort: String?
    public var secondaryAzurePort: String?
    public var sharedKey: String?
    public var vlanId: Int32?
    public var microsoftPeeringConfig: ExpressRouteCircuitPeeringConfigProtocol?
    public var stats: ExpressRouteCircuitStatsProtocol?
    public var provisioningState: String?
    public var gatewayManagerEtag: String?
    public var lastModifiedBy: String?
    public var routeFilter: RouteFilterProtocol?
    public var ipv6PeeringConfig: Ipv6ExpressRouteCircuitPeeringConfigProtocol?

        enum CodingKeys: String, CodingKey {case peeringType = "peeringType"
        case state = "state"
        case azureASN = "azureASN"
        case peerASN = "peerASN"
        case primaryPeerAddressPrefix = "primaryPeerAddressPrefix"
        case secondaryPeerAddressPrefix = "secondaryPeerAddressPrefix"
        case primaryAzurePort = "primaryAzurePort"
        case secondaryAzurePort = "secondaryAzurePort"
        case sharedKey = "sharedKey"
        case vlanId = "vlanId"
        case microsoftPeeringConfig = "microsoftPeeringConfig"
        case stats = "stats"
        case provisioningState = "provisioningState"
        case gatewayManagerEtag = "gatewayManagerEtag"
        case lastModifiedBy = "lastModifiedBy"
        case routeFilter = "routeFilter"
        case ipv6PeeringConfig = "ipv6PeeringConfig"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.peeringType) {
        self.peeringType = try container.decode(ExpressRouteCircuitPeeringTypeEnum?.self, forKey: .peeringType)
    }
    if container.contains(.state) {
        self.state = try container.decode(ExpressRouteCircuitPeeringStateEnum?.self, forKey: .state)
    }
    if container.contains(.azureASN) {
        self.azureASN = try container.decode(Int32?.self, forKey: .azureASN)
    }
    if container.contains(.peerASN) {
        self.peerASN = try container.decode(Int64?.self, forKey: .peerASN)
    }
    if container.contains(.primaryPeerAddressPrefix) {
        self.primaryPeerAddressPrefix = try container.decode(String?.self, forKey: .primaryPeerAddressPrefix)
    }
    if container.contains(.secondaryPeerAddressPrefix) {
        self.secondaryPeerAddressPrefix = try container.decode(String?.self, forKey: .secondaryPeerAddressPrefix)
    }
    if container.contains(.primaryAzurePort) {
        self.primaryAzurePort = try container.decode(String?.self, forKey: .primaryAzurePort)
    }
    if container.contains(.secondaryAzurePort) {
        self.secondaryAzurePort = try container.decode(String?.self, forKey: .secondaryAzurePort)
    }
    if container.contains(.sharedKey) {
        self.sharedKey = try container.decode(String?.self, forKey: .sharedKey)
    }
    if container.contains(.vlanId) {
        self.vlanId = try container.decode(Int32?.self, forKey: .vlanId)
    }
    if container.contains(.microsoftPeeringConfig) {
        self.microsoftPeeringConfig = try container.decode(ExpressRouteCircuitPeeringConfigData?.self, forKey: .microsoftPeeringConfig)
    }
    if container.contains(.stats) {
        self.stats = try container.decode(ExpressRouteCircuitStatsData?.self, forKey: .stats)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.gatewayManagerEtag) {
        self.gatewayManagerEtag = try container.decode(String?.self, forKey: .gatewayManagerEtag)
    }
    if container.contains(.lastModifiedBy) {
        self.lastModifiedBy = try container.decode(String?.self, forKey: .lastModifiedBy)
    }
    if container.contains(.routeFilter) {
        self.routeFilter = try container.decode(RouteFilterData?.self, forKey: .routeFilter)
    }
    if container.contains(.ipv6PeeringConfig) {
        self.ipv6PeeringConfig = try container.decode(Ipv6ExpressRouteCircuitPeeringConfigData?.self, forKey: .ipv6PeeringConfig)
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
    if self.peeringType != nil {try container.encode(self.peeringType, forKey: .peeringType)}
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.azureASN != nil {try container.encode(self.azureASN, forKey: .azureASN)}
    if self.peerASN != nil {try container.encode(self.peerASN, forKey: .peerASN)}
    if self.primaryPeerAddressPrefix != nil {try container.encode(self.primaryPeerAddressPrefix, forKey: .primaryPeerAddressPrefix)}
    if self.secondaryPeerAddressPrefix != nil {try container.encode(self.secondaryPeerAddressPrefix, forKey: .secondaryPeerAddressPrefix)}
    if self.primaryAzurePort != nil {try container.encode(self.primaryAzurePort, forKey: .primaryAzurePort)}
    if self.secondaryAzurePort != nil {try container.encode(self.secondaryAzurePort, forKey: .secondaryAzurePort)}
    if self.sharedKey != nil {try container.encode(self.sharedKey, forKey: .sharedKey)}
    if self.vlanId != nil {try container.encode(self.vlanId, forKey: .vlanId)}
    if self.microsoftPeeringConfig != nil {try container.encode(self.microsoftPeeringConfig as! ExpressRouteCircuitPeeringConfigData?, forKey: .microsoftPeeringConfig)}
    if self.stats != nil {try container.encode(self.stats as! ExpressRouteCircuitStatsData?, forKey: .stats)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.gatewayManagerEtag != nil {try container.encode(self.gatewayManagerEtag, forKey: .gatewayManagerEtag)}
    if self.lastModifiedBy != nil {try container.encode(self.lastModifiedBy, forKey: .lastModifiedBy)}
    if self.routeFilter != nil {try container.encode(self.routeFilter as! RouteFilterData?, forKey: .routeFilter)}
    if self.ipv6PeeringConfig != nil {try container.encode(self.ipv6PeeringConfig as! Ipv6ExpressRouteCircuitPeeringConfigData?, forKey: .ipv6PeeringConfig)}
  }
}

extension DataFactory {
  public static func createExpressRouteCircuitPeeringPropertiesFormatProtocol() -> ExpressRouteCircuitPeeringPropertiesFormatProtocol {
    return ExpressRouteCircuitPeeringPropertiesFormatData()
  }
}
