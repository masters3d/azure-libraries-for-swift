// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsData : VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsProtocol {
    public var domainNameLabel: String

        enum CodingKeys: String, CodingKey {case domainNameLabel = "domainNameLabel"
        }

  public init(domainNameLabel: String)  {
    self.domainNameLabel = domainNameLabel
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.domainNameLabel = try container.decode(String.self, forKey: .domainNameLabel)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.domainNameLabel, forKey: .domainNameLabel)
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsProtocol(domainNameLabel: String) -> VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsProtocol {
    return VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsData(domainNameLabel: domainNameLabel)
  }
}
