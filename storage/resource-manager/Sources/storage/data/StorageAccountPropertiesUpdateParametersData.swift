// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct StorageAccountPropertiesUpdateParametersData : StorageAccountPropertiesUpdateParametersProtocol {
    public var customDomain: CustomDomainProtocol?
    public var encryption: EncryptionProtocol?
    public var accessTier: AccessTierEnum?
    public var enableHttpsTrafficOnly: Bool?
    public var networkRuleSet: NetworkRuleSetProtocol?

        enum CodingKeys: String, CodingKey {case customDomain = "customDomain"
        case encryption = "encryption"
        case accessTier = "accessTier"
        case enableHttpsTrafficOnly = "supportsHttpsTrafficOnly"
        case networkRuleSet = "networkAcls"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.customDomain) {
        self.customDomain = try container.decode(CustomDomainData?.self, forKey: .customDomain)
    }
    if container.contains(.encryption) {
        self.encryption = try container.decode(EncryptionData?.self, forKey: .encryption)
    }
    if container.contains(.accessTier) {
        self.accessTier = try container.decode(AccessTierEnum?.self, forKey: .accessTier)
    }
    if container.contains(.enableHttpsTrafficOnly) {
        self.enableHttpsTrafficOnly = try container.decode(Bool?.self, forKey: .enableHttpsTrafficOnly)
    }
    if container.contains(.networkRuleSet) {
        self.networkRuleSet = try container.decode(NetworkRuleSetData?.self, forKey: .networkRuleSet)
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
    if self.customDomain != nil {try container.encode(self.customDomain as! CustomDomainData?, forKey: .customDomain)}
    if self.encryption != nil {try container.encode(self.encryption as! EncryptionData?, forKey: .encryption)}
    if self.accessTier != nil {try container.encode(self.accessTier, forKey: .accessTier)}
    if self.enableHttpsTrafficOnly != nil {try container.encode(self.enableHttpsTrafficOnly, forKey: .enableHttpsTrafficOnly)}
    if self.networkRuleSet != nil {try container.encode(self.networkRuleSet as! NetworkRuleSetData?, forKey: .networkRuleSet)}
  }
}

extension DataFactory {
  public static func createStorageAccountPropertiesUpdateParametersProtocol() -> StorageAccountPropertiesUpdateParametersProtocol {
    return StorageAccountPropertiesUpdateParametersData()
  }
}
