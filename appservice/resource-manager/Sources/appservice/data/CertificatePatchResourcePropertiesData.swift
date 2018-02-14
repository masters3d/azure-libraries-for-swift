// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CertificatePatchResourcePropertiesData : CertificatePatchResourcePropertiesProtocol {
    public var friendlyName: String?
    public var subjectName: String?
    public var hostNames: [String]?
    public var pfxBlob: [UInt8]?
    public var siteName: String?
    public var selfLink: String?
    public var issuer: String?
    public var issueDate: Date?
    public var expirationDate: Date?
    public var password: String?
    public var thumbprint: String?
    public var valid: Bool?
    public var cerBlob: [UInt8]?
    public var publicKeyHash: String?
    public var hostingEnvironmentProfile: HostingEnvironmentProfileProtocol?
    public var keyVaultId: String?
    public var keyVaultSecretName: String?
    public var keyVaultSecretStatus: KeyVaultSecretStatusEnum?
    public var geoRegion: String?
    public var serverFarmId: String?

        enum CodingKeys: String, CodingKey {case friendlyName = "friendlyName"
        case subjectName = "subjectName"
        case hostNames = "hostNames"
        case pfxBlob = "pfxBlob"
        case siteName = "siteName"
        case selfLink = "selfLink"
        case issuer = "issuer"
        case issueDate = "issueDate"
        case expirationDate = "expirationDate"
        case password = "password"
        case thumbprint = "thumbprint"
        case valid = "valid"
        case cerBlob = "cerBlob"
        case publicKeyHash = "publicKeyHash"
        case hostingEnvironmentProfile = "hostingEnvironmentProfile"
        case keyVaultId = "keyVaultId"
        case keyVaultSecretName = "keyVaultSecretName"
        case keyVaultSecretStatus = "keyVaultSecretStatus"
        case geoRegion = "geoRegion"
        case serverFarmId = "serverFarmId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.subjectName) {
        self.subjectName = try container.decode(String?.self, forKey: .subjectName)
    }
    if container.contains(.hostNames) {
        self.hostNames = try container.decode([String]?.self, forKey: .hostNames)
    }
    if container.contains(.pfxBlob) {
        self.pfxBlob = try container.decode([UInt8]?.self, forKey: .pfxBlob)
    }
    if container.contains(.siteName) {
        self.siteName = try container.decode(String?.self, forKey: .siteName)
    }
    if container.contains(.selfLink) {
        self.selfLink = try container.decode(String?.self, forKey: .selfLink)
    }
    if container.contains(.issuer) {
        self.issuer = try container.decode(String?.self, forKey: .issuer)
    }
    if container.contains(.issueDate) {
        self.issueDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .issueDate)), format: .dateTime)
    }
    if container.contains(.expirationDate) {
        self.expirationDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .expirationDate)), format: .dateTime)
    }
    if container.contains(.password) {
        self.password = try container.decode(String?.self, forKey: .password)
    }
    if container.contains(.thumbprint) {
        self.thumbprint = try container.decode(String?.self, forKey: .thumbprint)
    }
    if container.contains(.valid) {
        self.valid = try container.decode(Bool?.self, forKey: .valid)
    }
    if container.contains(.cerBlob) {
        self.cerBlob = try container.decode([UInt8]?.self, forKey: .cerBlob)
    }
    if container.contains(.publicKeyHash) {
        self.publicKeyHash = try container.decode(String?.self, forKey: .publicKeyHash)
    }
    if container.contains(.hostingEnvironmentProfile) {
        self.hostingEnvironmentProfile = try container.decode(HostingEnvironmentProfileData?.self, forKey: .hostingEnvironmentProfile)
    }
    if container.contains(.keyVaultId) {
        self.keyVaultId = try container.decode(String?.self, forKey: .keyVaultId)
    }
    if container.contains(.keyVaultSecretName) {
        self.keyVaultSecretName = try container.decode(String?.self, forKey: .keyVaultSecretName)
    }
    if container.contains(.keyVaultSecretStatus) {
        self.keyVaultSecretStatus = try container.decode(KeyVaultSecretStatusEnum?.self, forKey: .keyVaultSecretStatus)
    }
    if container.contains(.geoRegion) {
        self.geoRegion = try container.decode(String?.self, forKey: .geoRegion)
    }
    if container.contains(.serverFarmId) {
        self.serverFarmId = try container.decode(String?.self, forKey: .serverFarmId)
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
    if self.friendlyName != nil {try container.encode(self.friendlyName, forKey: .friendlyName)}
    if self.subjectName != nil {try container.encode(self.subjectName, forKey: .subjectName)}
    if self.hostNames != nil {try container.encode(self.hostNames as! [String]?, forKey: .hostNames)}
    if self.pfxBlob != nil {try container.encode(self.pfxBlob, forKey: .pfxBlob)}
    if self.siteName != nil {try container.encode(self.siteName, forKey: .siteName)}
    if self.selfLink != nil {try container.encode(self.selfLink, forKey: .selfLink)}
    if self.issuer != nil {try container.encode(self.issuer, forKey: .issuer)}
    if self.issueDate != nil {
        try container.encode(DateConverter.toString(date: self.issueDate!, format: .dateTime), forKey: .issueDate)
    }
    if self.expirationDate != nil {
        try container.encode(DateConverter.toString(date: self.expirationDate!, format: .dateTime), forKey: .expirationDate)
    }
    if self.password != nil {try container.encode(self.password, forKey: .password)}
    if self.thumbprint != nil {try container.encode(self.thumbprint, forKey: .thumbprint)}
    if self.valid != nil {try container.encode(self.valid, forKey: .valid)}
    if self.cerBlob != nil {try container.encode(self.cerBlob, forKey: .cerBlob)}
    if self.publicKeyHash != nil {try container.encode(self.publicKeyHash, forKey: .publicKeyHash)}
    if self.hostingEnvironmentProfile != nil {try container.encode(self.hostingEnvironmentProfile as! HostingEnvironmentProfileData?, forKey: .hostingEnvironmentProfile)}
    if self.keyVaultId != nil {try container.encode(self.keyVaultId, forKey: .keyVaultId)}
    if self.keyVaultSecretName != nil {try container.encode(self.keyVaultSecretName, forKey: .keyVaultSecretName)}
    if self.keyVaultSecretStatus != nil {try container.encode(self.keyVaultSecretStatus, forKey: .keyVaultSecretStatus)}
    if self.geoRegion != nil {try container.encode(self.geoRegion, forKey: .geoRegion)}
    if self.serverFarmId != nil {try container.encode(self.serverFarmId, forKey: .serverFarmId)}
  }
}

extension DataFactory {
  public static func createCertificatePatchResourcePropertiesProtocol() -> CertificatePatchResourcePropertiesProtocol {
    return CertificatePatchResourcePropertiesData()
  }
}
