// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NetworkInterfacePropertiesFragmentData : NetworkInterfacePropertiesFragmentProtocol {
    public var virtualNetworkId: String?
    public var subnetId: String?
    public var publicIpAddressId: String?
    public var publicIpAddress: String?
    public var privateIpAddress: String?
    public var dnsName: String?
    public var rdpAuthority: String?
    public var sshAuthority: String?
    public var sharedPublicIpAddressConfiguration: SharedPublicIpAddressConfigurationFragmentProtocol?

        enum CodingKeys: String, CodingKey {case virtualNetworkId = "virtualNetworkId"
        case subnetId = "subnetId"
        case publicIpAddressId = "publicIpAddressId"
        case publicIpAddress = "publicIpAddress"
        case privateIpAddress = "privateIpAddress"
        case dnsName = "dnsName"
        case rdpAuthority = "rdpAuthority"
        case sshAuthority = "sshAuthority"
        case sharedPublicIpAddressConfiguration = "sharedPublicIpAddressConfiguration"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.virtualNetworkId) {
        self.virtualNetworkId = try container.decode(String?.self, forKey: .virtualNetworkId)
    }
    if container.contains(.subnetId) {
        self.subnetId = try container.decode(String?.self, forKey: .subnetId)
    }
    if container.contains(.publicIpAddressId) {
        self.publicIpAddressId = try container.decode(String?.self, forKey: .publicIpAddressId)
    }
    if container.contains(.publicIpAddress) {
        self.publicIpAddress = try container.decode(String?.self, forKey: .publicIpAddress)
    }
    if container.contains(.privateIpAddress) {
        self.privateIpAddress = try container.decode(String?.self, forKey: .privateIpAddress)
    }
    if container.contains(.dnsName) {
        self.dnsName = try container.decode(String?.self, forKey: .dnsName)
    }
    if container.contains(.rdpAuthority) {
        self.rdpAuthority = try container.decode(String?.self, forKey: .rdpAuthority)
    }
    if container.contains(.sshAuthority) {
        self.sshAuthority = try container.decode(String?.self, forKey: .sshAuthority)
    }
    if container.contains(.sharedPublicIpAddressConfiguration) {
        self.sharedPublicIpAddressConfiguration = try container.decode(SharedPublicIpAddressConfigurationFragmentData?.self, forKey: .sharedPublicIpAddressConfiguration)
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
    if self.virtualNetworkId != nil { try container.encode(self.virtualNetworkId, forKey: .virtualNetworkId) }
    if self.subnetId != nil { try container.encode(self.subnetId, forKey: .subnetId) }
    if self.publicIpAddressId != nil { try container.encode(self.publicIpAddressId, forKey: .publicIpAddressId) }
    if self.publicIpAddress != nil { try container.encode(self.publicIpAddress, forKey: .publicIpAddress) }
    if self.privateIpAddress != nil { try container.encode(self.privateIpAddress, forKey: .privateIpAddress) }
    if self.dnsName != nil { try container.encode(self.dnsName, forKey: .dnsName) }
    if self.rdpAuthority != nil { try container.encode(self.rdpAuthority, forKey: .rdpAuthority) }
    if self.sshAuthority != nil { try container.encode(self.sshAuthority, forKey: .sshAuthority) }
    if self.sharedPublicIpAddressConfiguration != nil { try container.encode(self.sharedPublicIpAddressConfiguration as! SharedPublicIpAddressConfigurationFragmentData?, forKey: .sharedPublicIpAddressConfiguration) }
  }
}

extension DataFactory {
  public static func createNetworkInterfacePropertiesFragmentProtocol() -> NetworkInterfacePropertiesFragmentProtocol {
    return NetworkInterfacePropertiesFragmentData()
  }
}
