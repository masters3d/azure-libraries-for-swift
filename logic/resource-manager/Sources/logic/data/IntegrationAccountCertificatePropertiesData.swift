// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IntegrationAccountCertificatePropertiesData : IntegrationAccountCertificatePropertiesProtocol {
    public var createdTime: Date?
    public var changedTime: Date?
    public var metadata: [String: String?]?
    public var key: KeyVaultKeyReferenceProtocol?
    public var publicCertificate: String?

        enum CodingKeys: String, CodingKey {case createdTime = "createdTime"
        case changedTime = "changedTime"
        case metadata = "metadata"
        case key = "key"
        case publicCertificate = "publicCertificate"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.createdTime) {
        self.createdTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdTime)), format: .dateTime)
    }
    if container.contains(.changedTime) {
        self.changedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .changedTime)), format: .dateTime)
    }
    if container.contains(.metadata) {
        self.metadata = try container.decode([String: String?]?.self, forKey: .metadata)
    }
    if container.contains(.key) {
        self.key = try container.decode(KeyVaultKeyReferenceData?.self, forKey: .key)
    }
    if container.contains(.publicCertificate) {
        self.publicCertificate = try container.decode(String?.self, forKey: .publicCertificate)
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
    if self.createdTime != nil {
        try container.encode(DateConverter.toString(date: self.createdTime!, format: .dateTime), forKey: .createdTime)
    }
    if self.changedTime != nil {
        try container.encode(DateConverter.toString(date: self.changedTime!, format: .dateTime), forKey: .changedTime)
    }
    if self.metadata != nil {try container.encode(self.metadata, forKey: .metadata)}
    if self.key != nil {try container.encode(self.key as! KeyVaultKeyReferenceData?, forKey: .key)}
    if self.publicCertificate != nil {try container.encode(self.publicCertificate, forKey: .publicCertificate)}
  }
}

extension DataFactory {
  public static func createIntegrationAccountCertificatePropertiesProtocol() -> IntegrationAccountCertificatePropertiesProtocol {
    return IntegrationAccountCertificatePropertiesData()
  }
}
