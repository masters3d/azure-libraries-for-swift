// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetNetworkConfigurationPropertiesData : VirtualMachineScaleSetNetworkConfigurationPropertiesProtocol {
    public var primary: Bool?
    public var enableAcceleratedNetworking: Bool?
    public var networkSecurityGroup: SubResourceProtocol?
    public var dnsSettings: VirtualMachineScaleSetNetworkConfigurationDnsSettingsProtocol?
    public var ipConfigurations: [VirtualMachineScaleSetIPConfigurationProtocol]
    public var enableIPForwarding: Bool?

        enum CodingKeys: String, CodingKey {case primary = "primary"
        case enableAcceleratedNetworking = "enableAcceleratedNetworking"
        case networkSecurityGroup = "networkSecurityGroup"
        case dnsSettings = "dnsSettings"
        case ipConfigurations = "ipConfigurations"
        case enableIPForwarding = "enableIPForwarding"
        }

  public init(ipConfigurations: [VirtualMachineScaleSetIPConfigurationProtocol])  {
    self.ipConfigurations = ipConfigurations
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.primary) {
        self.primary = try container.decode(Bool?.self, forKey: .primary)
    }
    if container.contains(.enableAcceleratedNetworking) {
        self.enableAcceleratedNetworking = try container.decode(Bool?.self, forKey: .enableAcceleratedNetworking)
    }
    if container.contains(.networkSecurityGroup) {
        self.networkSecurityGroup = try container.decode(SubResourceData?.self, forKey: .networkSecurityGroup)
    }
    if container.contains(.dnsSettings) {
        self.dnsSettings = try container.decode(VirtualMachineScaleSetNetworkConfigurationDnsSettingsData?.self, forKey: .dnsSettings)
    }
    self.ipConfigurations = try container.decode([VirtualMachineScaleSetIPConfigurationData].self, forKey: .ipConfigurations)
    if container.contains(.enableIPForwarding) {
        self.enableIPForwarding = try container.decode(Bool?.self, forKey: .enableIPForwarding)
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
    if self.primary != nil {try container.encode(self.primary, forKey: .primary)}
    if self.enableAcceleratedNetworking != nil {try container.encode(self.enableAcceleratedNetworking, forKey: .enableAcceleratedNetworking)}
    if self.networkSecurityGroup != nil {try container.encode(self.networkSecurityGroup as! SubResourceData?, forKey: .networkSecurityGroup)}
    if self.dnsSettings != nil {try container.encode(self.dnsSettings as! VirtualMachineScaleSetNetworkConfigurationDnsSettingsData?, forKey: .dnsSettings)}
    try container.encode(self.ipConfigurations as! [VirtualMachineScaleSetIPConfigurationData], forKey: .ipConfigurations)
    if self.enableIPForwarding != nil {try container.encode(self.enableIPForwarding, forKey: .enableIPForwarding)}
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetNetworkConfigurationPropertiesProtocol(ipConfigurations: [VirtualMachineScaleSetIPConfigurationProtocol]) -> VirtualMachineScaleSetNetworkConfigurationPropertiesProtocol {
    return VirtualMachineScaleSetNetworkConfigurationPropertiesData(ipConfigurations: ipConfigurations)
  }
}
