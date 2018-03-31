// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ResourceCertificateAndAadDetailsData : ResourceCertificateAndAadDetailsProtocol, ResourceCertificateDetailsProtocol {
    public var certificate: [UInt8]?
    public var friendlyName: String?
    public var issuer: String?
    public var resourceId: Int64?
    public var subject: String?
    public var thumbprint: String?
    public var validFrom: Date?
    public var validTo: Date?
    public var aadAuthority: String
    public var aadTenantId: String
    public var servicePrincipalClientId: String
    public var servicePrincipalObjectId: String
    public var azureManagementEndpointAudience: String

        enum CodingKeys: String, CodingKey {case certificate = "certificate"
        case friendlyName = "friendlyName"
        case issuer = "issuer"
        case resourceId = "resourceId"
        case subject = "subject"
        case thumbprint = "thumbprint"
        case validFrom = "validFrom"
        case validTo = "validTo"
        case aadAuthority = "aadAuthority"
        case aadTenantId = "aadTenantId"
        case servicePrincipalClientId = "servicePrincipalClientId"
        case servicePrincipalObjectId = "servicePrincipalObjectId"
        case azureManagementEndpointAudience = "azureManagementEndpointAudience"
        }

  public init(aadAuthority: String, aadTenantId: String, servicePrincipalClientId: String, servicePrincipalObjectId: String, azureManagementEndpointAudience: String) {
    self.aadAuthority = aadAuthority
    self.aadTenantId = aadTenantId
    self.servicePrincipalClientId = servicePrincipalClientId
    self.servicePrincipalObjectId = servicePrincipalObjectId
    self.azureManagementEndpointAudience = azureManagementEndpointAudience
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.certificate) {
        self.certificate = try container.decode([UInt8]?.self, forKey: .certificate)
    }
    if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.issuer) {
        self.issuer = try container.decode(String?.self, forKey: .issuer)
    }
    if container.contains(.resourceId) {
        self.resourceId = try container.decode(Int64?.self, forKey: .resourceId)
    }
    if container.contains(.subject) {
        self.subject = try container.decode(String?.self, forKey: .subject)
    }
    if container.contains(.thumbprint) {
        self.thumbprint = try container.decode(String?.self, forKey: .thumbprint)
    }
    if container.contains(.validFrom) {
        self.validFrom = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .validFrom)), format: .dateTime)
    }
    if container.contains(.validTo) {
        self.validTo = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .validTo)), format: .dateTime)
    }
    self.aadAuthority = try container.decode(String.self, forKey: .aadAuthority)
    self.aadTenantId = try container.decode(String.self, forKey: .aadTenantId)
    self.servicePrincipalClientId = try container.decode(String.self, forKey: .servicePrincipalClientId)
    self.servicePrincipalObjectId = try container.decode(String.self, forKey: .servicePrincipalObjectId)
    self.azureManagementEndpointAudience = try container.decode(String.self, forKey: .azureManagementEndpointAudience)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.certificate != nil { try container.encode(self.certificate, forKey: .certificate) }
    if self.friendlyName != nil { try container.encode(self.friendlyName, forKey: .friendlyName) }
    if self.issuer != nil { try container.encode(self.issuer, forKey: .issuer) }
    if self.resourceId != nil { try container.encode(self.resourceId, forKey: .resourceId) }
    if self.subject != nil { try container.encode(self.subject, forKey: .subject) }
    if self.thumbprint != nil { try container.encode(self.thumbprint, forKey: .thumbprint) }
    if self.validFrom != nil {
        try container.encode(DateConverter.toString(date: self.validFrom!, format: .dateTime), forKey: .validFrom)
    }
    if self.validTo != nil {
        try container.encode(DateConverter.toString(date: self.validTo!, format: .dateTime), forKey: .validTo)
    }
    try container.encode(self.aadAuthority, forKey: .aadAuthority)
    try container.encode(self.aadTenantId, forKey: .aadTenantId)
    try container.encode(self.servicePrincipalClientId, forKey: .servicePrincipalClientId)
    try container.encode(self.servicePrincipalObjectId, forKey: .servicePrincipalObjectId)
    try container.encode(self.azureManagementEndpointAudience, forKey: .azureManagementEndpointAudience)
  }
}

extension DataFactory {
  public static func createResourceCertificateAndAadDetailsProtocol(aadAuthority: String, aadTenantId: String, servicePrincipalClientId: String, servicePrincipalObjectId: String, azureManagementEndpointAudience: String) -> ResourceCertificateAndAadDetailsProtocol {
    return ResourceCertificateAndAadDetailsData(aadAuthority: aadAuthority, aadTenantId: aadTenantId, servicePrincipalClientId: servicePrincipalClientId, servicePrincipalObjectId: servicePrincipalObjectId, azureManagementEndpointAudience: azureManagementEndpointAudience)
  }
}
