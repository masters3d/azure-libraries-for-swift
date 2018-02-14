// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct LoadBalancerPropertiesFormatData : LoadBalancerPropertiesFormatProtocol {
    public var frontendIPConfigurations: [FrontendIPConfigurationProtocol?]?
    public var backendAddressPools: [BackendAddressPoolProtocol?]?
    public var loadBalancingRules: [LoadBalancingRuleProtocol?]?
    public var probes: [ProbeProtocol?]?
    public var inboundNatRules: [InboundNatRuleProtocol?]?
    public var inboundNatPools: [InboundNatPoolProtocol?]?
    public var outboundNatRules: [OutboundNatRuleProtocol?]?
    public var resourceGuid: String?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case frontendIPConfigurations = "frontendIPConfigurations"
        case backendAddressPools = "backendAddressPools"
        case loadBalancingRules = "loadBalancingRules"
        case probes = "probes"
        case inboundNatRules = "inboundNatRules"
        case inboundNatPools = "inboundNatPools"
        case outboundNatRules = "outboundNatRules"
        case resourceGuid = "resourceGuid"
        case provisioningState = "provisioningState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.frontendIPConfigurations) {
        self.frontendIPConfigurations = try container.decode([FrontendIPConfigurationData?]?.self, forKey: .frontendIPConfigurations)
    }
    if container.contains(.backendAddressPools) {
        self.backendAddressPools = try container.decode([BackendAddressPoolData?]?.self, forKey: .backendAddressPools)
    }
    if container.contains(.loadBalancingRules) {
        self.loadBalancingRules = try container.decode([LoadBalancingRuleData?]?.self, forKey: .loadBalancingRules)
    }
    if container.contains(.probes) {
        self.probes = try container.decode([ProbeData?]?.self, forKey: .probes)
    }
    if container.contains(.inboundNatRules) {
        self.inboundNatRules = try container.decode([InboundNatRuleData?]?.self, forKey: .inboundNatRules)
    }
    if container.contains(.inboundNatPools) {
        self.inboundNatPools = try container.decode([InboundNatPoolData?]?.self, forKey: .inboundNatPools)
    }
    if container.contains(.outboundNatRules) {
        self.outboundNatRules = try container.decode([OutboundNatRuleData?]?.self, forKey: .outboundNatRules)
    }
    if container.contains(.resourceGuid) {
        self.resourceGuid = try container.decode(String?.self, forKey: .resourceGuid)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
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
    if self.frontendIPConfigurations != nil {try container.encode(self.frontendIPConfigurations as! [FrontendIPConfigurationData?]?, forKey: .frontendIPConfigurations)}
    if self.backendAddressPools != nil {try container.encode(self.backendAddressPools as! [BackendAddressPoolData?]?, forKey: .backendAddressPools)}
    if self.loadBalancingRules != nil {try container.encode(self.loadBalancingRules as! [LoadBalancingRuleData?]?, forKey: .loadBalancingRules)}
    if self.probes != nil {try container.encode(self.probes as! [ProbeData?]?, forKey: .probes)}
    if self.inboundNatRules != nil {try container.encode(self.inboundNatRules as! [InboundNatRuleData?]?, forKey: .inboundNatRules)}
    if self.inboundNatPools != nil {try container.encode(self.inboundNatPools as! [InboundNatPoolData?]?, forKey: .inboundNatPools)}
    if self.outboundNatRules != nil {try container.encode(self.outboundNatRules as! [OutboundNatRuleData?]?, forKey: .outboundNatRules)}
    if self.resourceGuid != nil {try container.encode(self.resourceGuid, forKey: .resourceGuid)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createLoadBalancerPropertiesFormatProtocol() -> LoadBalancerPropertiesFormatProtocol {
    return LoadBalancerPropertiesFormatData()
  }
}
