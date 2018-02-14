// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SharedAccessSignatureAuthorizationRuleData : SharedAccessSignatureAuthorizationRuleProtocol {
    public var keyName: String
    public var primaryKey: String?
    public var secondaryKey: String?
    public var rights: AccessRightsEnum

        enum CodingKeys: String, CodingKey {case keyName = "keyName"
        case primaryKey = "primaryKey"
        case secondaryKey = "secondaryKey"
        case rights = "rights"
        }

  public init(keyName: String, rights: AccessRightsEnum)  {
    self.keyName = keyName
    self.rights = rights
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.keyName = try container.decode(String.self, forKey: .keyName)
    if container.contains(.primaryKey) {
        self.primaryKey = try container.decode(String?.self, forKey: .primaryKey)
    }
    if container.contains(.secondaryKey) {
        self.secondaryKey = try container.decode(String?.self, forKey: .secondaryKey)
    }
    self.rights = try container.decode(AccessRightsEnum.self, forKey: .rights)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.keyName, forKey: .keyName)
    if self.primaryKey != nil {try container.encode(self.primaryKey, forKey: .primaryKey)}
    if self.secondaryKey != nil {try container.encode(self.secondaryKey, forKey: .secondaryKey)}
    try container.encode(self.rights, forKey: .rights)
  }
}

extension DataFactory {
  public static func createSharedAccessSignatureAuthorizationRuleProtocol(keyName: String, rights: AccessRightsEnum) -> SharedAccessSignatureAuthorizationRuleProtocol {
    return SharedAccessSignatureAuthorizationRuleData(keyName: keyName, rights: rights)
  }
}
