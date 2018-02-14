// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SessionParametersPropertiesData : SessionParametersPropertiesProtocol {
    public var userName: String?
    public var password: String?
    public var retentionPeriod: RetentionPeriodEnum?
    public var credentialDataFormat: CredentialDataFormatEnum?
    public var encryptionCertificateThumbprint: String?

        enum CodingKeys: String, CodingKey {case userName = "userName"
        case password = "password"
        case retentionPeriod = "retentionPeriod"
        case credentialDataFormat = "credentialDataFormat"
        case encryptionCertificateThumbprint = "EncryptionCertificateThumbprint"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.userName) {
        self.userName = try container.decode(String?.self, forKey: .userName)
    }
    if container.contains(.password) {
        self.password = try container.decode(String?.self, forKey: .password)
    }
    if container.contains(.retentionPeriod) {
        self.retentionPeriod = try container.decode(RetentionPeriodEnum?.self, forKey: .retentionPeriod)
    }
    if container.contains(.credentialDataFormat) {
        self.credentialDataFormat = try container.decode(CredentialDataFormatEnum?.self, forKey: .credentialDataFormat)
    }
    if container.contains(.encryptionCertificateThumbprint) {
        self.encryptionCertificateThumbprint = try container.decode(String?.self, forKey: .encryptionCertificateThumbprint)
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
    if self.userName != nil {try container.encode(self.userName, forKey: .userName)}
    if self.password != nil {try container.encode(self.password, forKey: .password)}
    if self.retentionPeriod != nil {try container.encode(self.retentionPeriod, forKey: .retentionPeriod)}
    if self.credentialDataFormat != nil {try container.encode(self.credentialDataFormat, forKey: .credentialDataFormat)}
    if self.encryptionCertificateThumbprint != nil {try container.encode(self.encryptionCertificateThumbprint, forKey: .encryptionCertificateThumbprint)}
  }
}

extension DataFactory {
  public static func createSessionParametersPropertiesProtocol() -> SessionParametersPropertiesProtocol {
    return SessionParametersPropertiesData()
  }
}