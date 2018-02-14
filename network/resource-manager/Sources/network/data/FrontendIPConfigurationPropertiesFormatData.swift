// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FrontendIPConfigurationPropertiesFormatData : FrontendIPConfigurationPropertiesFormatProtocol {
    public var inboundNatRules: [SubResourceProtocol?]?
    public var inboundNatPools: [SubResourceProtocol?]?
    public var outboundNatRules: [SubResourceProtocol?]?
    public var loadBalancingRules: [SubResourceProtocol?]?
    public var privateIPAddress: String?
    public var privateIPAllocationMethod: IPAllocationMethodEnum?
    public var subnet: SubnetProtocol?
    public var publicIPAddress: PublicIPAddressProtocol?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case inboundNatRules = "inboundNatRules"
        case inboundNatPools = "inboundNatPools"
        case outboundNatRules = "outboundNatRules"
        case loadBalancingRules = "loadBalancingRules"
        case privateIPAddress = "privateIPAddress"
        case privateIPAllocationMethod = "privateIPAllocationMethod"
        case subnet = "subnet"
        case publicIPAddress = "publicIPAddress"
        case provisioningState = "provisioningState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.inboundNatRules) {
        self.inboundNatRules = try container.decode([SubResourceData?]?.self, forKey: .inboundNatRules)
    }
    if container.contains(.inboundNatPools) {
        self.inboundNatPools = try container.decode([SubResourceData?]?.self, forKey: .inboundNatPools)
    }
    if container.contains(.outboundNatRules) {
        self.outboundNatRules = try container.decode([SubResourceData?]?.self, forKey: .outboundNatRules)
    }
    if container.contains(.loadBalancingRules) {
        self.loadBalancingRules = try container.decode([SubResourceData?]?.self, forKey: .loadBalancingRules)
    }
    if container.contains(.privateIPAddress) {
        self.privateIPAddress = try container.decode(String?.self, forKey: .privateIPAddress)
    }
    if container.contains(.privateIPAllocationMethod) {
        self.privateIPAllocationMethod = try container.decode(IPAllocationMethodEnum?.self, forKey: .privateIPAllocationMethod)
    }
    if container.contains(.subnet) {
        self.subnet = try container.decode(SubnetData?.self, forKey: .subnet)
    }
    if container.contains(.publicIPAddress) {
        self.publicIPAddress = try container.decode(PublicIPAddressData?.self, forKey: .publicIPAddress)
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
    if self.inboundNatRules != nil {try container.encode(self.inboundNatRules as! [SubResourceData?]?, forKey: .inboundNatRules)}
    if self.inboundNatPools != nil {try container.encode(self.inboundNatPools as! [SubResourceData?]?, forKey: .inboundNatPools)}
    if self.outboundNatRules != nil {try container.encode(self.outboundNatRules as! [SubResourceData?]?, forKey: .outboundNatRules)}
    if self.loadBalancingRules != nil {try container.encode(self.loadBalancingRules as! [SubResourceData?]?, forKey: .loadBalancingRules)}
    if self.privateIPAddress != nil {try container.encode(self.privateIPAddress, forKey: .privateIPAddress)}
    if self.privateIPAllocationMethod != nil {try container.encode(self.privateIPAllocationMethod, forKey: .privateIPAllocationMethod)}
    if self.subnet != nil {try container.encode(self.subnet as! SubnetData?, forKey: .subnet)}
    if self.publicIPAddress != nil {try container.encode(self.publicIPAddress as! PublicIPAddressData?, forKey: .publicIPAddress)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createFrontendIPConfigurationPropertiesFormatProtocol() -> FrontendIPConfigurationPropertiesFormatProtocol {
    return FrontendIPConfigurationPropertiesFormatData()
  }
}
