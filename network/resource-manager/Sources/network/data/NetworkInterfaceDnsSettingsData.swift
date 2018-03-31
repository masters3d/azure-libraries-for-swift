// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NetworkInterfaceDnsSettingsData : NetworkInterfaceDnsSettingsProtocol {
    public var dnsServers: [String]?
    public var appliedDnsServers: [String]?
    public var internalDnsNameLabel: String?
    public var internalFqdn: String?
    public var internalDomainNameSuffix: String?

        enum CodingKeys: String, CodingKey {case dnsServers = "dnsServers"
        case appliedDnsServers = "appliedDnsServers"
        case internalDnsNameLabel = "internalDnsNameLabel"
        case internalFqdn = "internalFqdn"
        case internalDomainNameSuffix = "internalDomainNameSuffix"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.dnsServers) {
        self.dnsServers = try container.decode([String]?.self, forKey: .dnsServers)
    }
    if container.contains(.appliedDnsServers) {
        self.appliedDnsServers = try container.decode([String]?.self, forKey: .appliedDnsServers)
    }
    if container.contains(.internalDnsNameLabel) {
        self.internalDnsNameLabel = try container.decode(String?.self, forKey: .internalDnsNameLabel)
    }
    if container.contains(.internalFqdn) {
        self.internalFqdn = try container.decode(String?.self, forKey: .internalFqdn)
    }
    if container.contains(.internalDomainNameSuffix) {
        self.internalDomainNameSuffix = try container.decode(String?.self, forKey: .internalDomainNameSuffix)
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
    if self.dnsServers != nil {try container.encode(self.dnsServers as! [String]?, forKey: .dnsServers)}
    if self.appliedDnsServers != nil {try container.encode(self.appliedDnsServers as! [String]?, forKey: .appliedDnsServers)}
    if self.internalDnsNameLabel != nil {try container.encode(self.internalDnsNameLabel, forKey: .internalDnsNameLabel)}
    if self.internalFqdn != nil {try container.encode(self.internalFqdn, forKey: .internalFqdn)}
    if self.internalDomainNameSuffix != nil {try container.encode(self.internalDomainNameSuffix, forKey: .internalDomainNameSuffix)}
  }
}

extension DataFactory {
  public static func createNetworkInterfaceDnsSettingsProtocol() -> NetworkInterfaceDnsSettingsProtocol {
    return NetworkInterfaceDnsSettingsData()
  }
}
