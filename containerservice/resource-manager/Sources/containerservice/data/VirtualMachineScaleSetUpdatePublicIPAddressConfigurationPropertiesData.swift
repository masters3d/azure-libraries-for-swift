// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetUpdatePublicIPAddressConfigurationPropertiesData : VirtualMachineScaleSetUpdatePublicIPAddressConfigurationPropertiesProtocol {
    public var idleTimeoutInMinutes: Int32?
    public var dnsSettings: VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsProtocol?

        enum CodingKeys: String, CodingKey {case idleTimeoutInMinutes = "idleTimeoutInMinutes"
        case dnsSettings = "dnsSettings"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.idleTimeoutInMinutes) {
        self.idleTimeoutInMinutes = try container.decode(Int32?.self, forKey: .idleTimeoutInMinutes)
    }
    if container.contains(.dnsSettings) {
        self.dnsSettings = try container.decode(VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsData?.self, forKey: .dnsSettings)
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
    if self.idleTimeoutInMinutes != nil {try container.encode(self.idleTimeoutInMinutes, forKey: .idleTimeoutInMinutes)}
    if self.dnsSettings != nil {try container.encode(self.dnsSettings as! VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsData?, forKey: .dnsSettings)}
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetUpdatePublicIPAddressConfigurationPropertiesProtocol() -> VirtualMachineScaleSetUpdatePublicIPAddressConfigurationPropertiesProtocol {
    return VirtualMachineScaleSetUpdatePublicIPAddressConfigurationPropertiesData()
  }
}
