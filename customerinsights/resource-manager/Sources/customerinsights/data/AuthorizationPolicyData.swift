// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AuthorizationPolicyData : AuthorizationPolicyProtocol {
    public var policyName: String?
    public var permissions: [PermissionTypesEnum]
    public var primaryKey: String?
    public var secondaryKey: String?

        enum CodingKeys: String, CodingKey {case policyName = "policyName"
        case permissions = "permissions"
        case primaryKey = "primaryKey"
        case secondaryKey = "secondaryKey"
        }

  public init(permissions: [PermissionTypesEnum])  {
    self.permissions = permissions
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.policyName) {
        self.policyName = try container.decode(String?.self, forKey: .policyName)
    }
    self.permissions = try container.decode([PermissionTypesEnum].self, forKey: .permissions)
    if container.contains(.primaryKey) {
        self.primaryKey = try container.decode(String?.self, forKey: .primaryKey)
    }
    if container.contains(.secondaryKey) {
        self.secondaryKey = try container.decode(String?.self, forKey: .secondaryKey)
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
    if self.policyName != nil {try container.encode(self.policyName, forKey: .policyName)}
    try container.encode(self.permissions as! [PermissionTypesEnum], forKey: .permissions)
    if self.primaryKey != nil {try container.encode(self.primaryKey, forKey: .primaryKey)}
    if self.secondaryKey != nil {try container.encode(self.secondaryKey, forKey: .secondaryKey)}
  }
}

extension DataFactory {
  public static func createAuthorizationPolicyProtocol(permissions: [PermissionTypesEnum]) -> AuthorizationPolicyProtocol {
    return AuthorizationPolicyData(permissions: permissions)
  }
}
