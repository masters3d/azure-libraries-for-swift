// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetIPConfigurationPropertiesData : VirtualMachineScaleSetIPConfigurationPropertiesProtocol {
    public var subnet: ApiEntityReferenceProtocol?
    public var primary: Bool?
    public var publicIPAddressConfiguration: VirtualMachineScaleSetPublicIPAddressConfigurationProtocol?
    public var privateIPAddressVersion: IPVersionEnum?
    public var applicationGatewayBackendAddressPools: [SubResourceProtocol?]?
    public var loadBalancerBackendAddressPools: [SubResourceProtocol?]?
    public var loadBalancerInboundNatPools: [SubResourceProtocol?]?

        enum CodingKeys: String, CodingKey {case subnet = "subnet"
        case primary = "primary"
        case publicIPAddressConfiguration = "publicIPAddressConfiguration"
        case privateIPAddressVersion = "privateIPAddressVersion"
        case applicationGatewayBackendAddressPools = "applicationGatewayBackendAddressPools"
        case loadBalancerBackendAddressPools = "loadBalancerBackendAddressPools"
        case loadBalancerInboundNatPools = "loadBalancerInboundNatPools"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.subnet) {
        self.subnet = try container.decode(ApiEntityReferenceData?.self, forKey: .subnet)
    }
    if container.contains(.primary) {
        self.primary = try container.decode(Bool?.self, forKey: .primary)
    }
    if container.contains(.publicIPAddressConfiguration) {
        self.publicIPAddressConfiguration = try container.decode(VirtualMachineScaleSetPublicIPAddressConfigurationData?.self, forKey: .publicIPAddressConfiguration)
    }
    if container.contains(.privateIPAddressVersion) {
        self.privateIPAddressVersion = try container.decode(IPVersionEnum?.self, forKey: .privateIPAddressVersion)
    }
    if container.contains(.applicationGatewayBackendAddressPools) {
        self.applicationGatewayBackendAddressPools = try container.decode([SubResourceData?]?.self, forKey: .applicationGatewayBackendAddressPools)
    }
    if container.contains(.loadBalancerBackendAddressPools) {
        self.loadBalancerBackendAddressPools = try container.decode([SubResourceData?]?.self, forKey: .loadBalancerBackendAddressPools)
    }
    if container.contains(.loadBalancerInboundNatPools) {
        self.loadBalancerInboundNatPools = try container.decode([SubResourceData?]?.self, forKey: .loadBalancerInboundNatPools)
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
    if self.subnet != nil {try container.encode(self.subnet as! ApiEntityReferenceData?, forKey: .subnet)}
    if self.primary != nil {try container.encode(self.primary, forKey: .primary)}
    if self.publicIPAddressConfiguration != nil {try container.encode(self.publicIPAddressConfiguration as! VirtualMachineScaleSetPublicIPAddressConfigurationData?, forKey: .publicIPAddressConfiguration)}
    if self.privateIPAddressVersion != nil {try container.encode(self.privateIPAddressVersion, forKey: .privateIPAddressVersion)}
    if self.applicationGatewayBackendAddressPools != nil {try container.encode(self.applicationGatewayBackendAddressPools as! [SubResourceData?]?, forKey: .applicationGatewayBackendAddressPools)}
    if self.loadBalancerBackendAddressPools != nil {try container.encode(self.loadBalancerBackendAddressPools as! [SubResourceData?]?, forKey: .loadBalancerBackendAddressPools)}
    if self.loadBalancerInboundNatPools != nil {try container.encode(self.loadBalancerInboundNatPools as! [SubResourceData?]?, forKey: .loadBalancerInboundNatPools)}
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetIPConfigurationPropertiesProtocol() -> VirtualMachineScaleSetIPConfigurationPropertiesProtocol {
    return VirtualMachineScaleSetIPConfigurationPropertiesData()
  }
}
