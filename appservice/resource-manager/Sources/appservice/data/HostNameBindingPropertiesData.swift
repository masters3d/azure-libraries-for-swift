// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HostNameBindingPropertiesData : HostNameBindingPropertiesProtocol {
    public var siteName: String?
    public var domainId: String?
    public var azureResourceName: String?
    public var azureResourceType: AzureResourceTypeEnum?
    public var customHostNameDnsRecordType: CustomHostNameDnsRecordTypeEnum?
    public var hostNameType: HostNameTypeEnum?
    public var sslState: SslStateEnum?
    public var thumbprint: String?
    public var virtualIP: String?

        enum CodingKeys: String, CodingKey {case siteName = "siteName"
        case domainId = "domainId"
        case azureResourceName = "azureResourceName"
        case azureResourceType = "azureResourceType"
        case customHostNameDnsRecordType = "customHostNameDnsRecordType"
        case hostNameType = "hostNameType"
        case sslState = "sslState"
        case thumbprint = "thumbprint"
        case virtualIP = "virtualIP"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.siteName) {
        self.siteName = try container.decode(String?.self, forKey: .siteName)
    }
    if container.contains(.domainId) {
        self.domainId = try container.decode(String?.self, forKey: .domainId)
    }
    if container.contains(.azureResourceName) {
        self.azureResourceName = try container.decode(String?.self, forKey: .azureResourceName)
    }
    if container.contains(.azureResourceType) {
        self.azureResourceType = try container.decode(AzureResourceTypeEnum?.self, forKey: .azureResourceType)
    }
    if container.contains(.customHostNameDnsRecordType) {
        self.customHostNameDnsRecordType = try container.decode(CustomHostNameDnsRecordTypeEnum?.self, forKey: .customHostNameDnsRecordType)
    }
    if container.contains(.hostNameType) {
        self.hostNameType = try container.decode(HostNameTypeEnum?.self, forKey: .hostNameType)
    }
    if container.contains(.sslState) {
        self.sslState = try container.decode(SslStateEnum?.self, forKey: .sslState)
    }
    if container.contains(.thumbprint) {
        self.thumbprint = try container.decode(String?.self, forKey: .thumbprint)
    }
    if container.contains(.virtualIP) {
        self.virtualIP = try container.decode(String?.self, forKey: .virtualIP)
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
    if self.siteName != nil { try container.encode(self.siteName, forKey: .siteName) }
    if self.domainId != nil { try container.encode(self.domainId, forKey: .domainId) }
    if self.azureResourceName != nil { try container.encode(self.azureResourceName, forKey: .azureResourceName) }
    if self.azureResourceType != nil { try container.encode(self.azureResourceType, forKey: .azureResourceType) }
    if self.customHostNameDnsRecordType != nil { try container.encode(self.customHostNameDnsRecordType, forKey: .customHostNameDnsRecordType) }
    if self.hostNameType != nil { try container.encode(self.hostNameType, forKey: .hostNameType) }
    if self.sslState != nil { try container.encode(self.sslState, forKey: .sslState) }
    if self.thumbprint != nil { try container.encode(self.thumbprint, forKey: .thumbprint) }
    if self.virtualIP != nil { try container.encode(self.virtualIP, forKey: .virtualIP) }
  }
}

extension DataFactory {
  public static func createHostNameBindingPropertiesProtocol() -> HostNameBindingPropertiesProtocol {
    return HostNameBindingPropertiesData()
  }
}
