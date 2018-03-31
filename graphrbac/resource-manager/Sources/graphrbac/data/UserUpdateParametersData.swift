// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UserUpdateParametersData : UserUpdateParametersProtocol, UserBaseProtocol {
    public var additionalProperties: [String:[String: String?]]?
    public var immutableId: String?
    public var usageLocation: String?
    public var givenName: String?
    public var surname: String?
    public var userType: UserTypeEnum?
    public var accountEnabled: Bool?
    public var displayName: String?
    public var passwordProfile: PasswordProfileProtocol?
    public var userPrincipalName: String?
    public var mailNickname: String?

        enum CodingKeys: String, CodingKey {case additionalProperties = ""
        case immutableId = "immutableId"
        case usageLocation = "usageLocation"
        case givenName = "givenName"
        case surname = "surname"
        case userType = "userType"
        case accountEnabled = "accountEnabled"
        case displayName = "displayName"
        case passwordProfile = "passwordProfile"
        case userPrincipalName = "userPrincipalName"
        case mailNickname = "mailNickname"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.additionalProperties) {
        self.additionalProperties = try container.decode([String:[String: String?]]?.self, forKey: .additionalProperties)
    }
    if container.contains(.immutableId) {
        self.immutableId = try container.decode(String?.self, forKey: .immutableId)
    }
    if container.contains(.usageLocation) {
        self.usageLocation = try container.decode(String?.self, forKey: .usageLocation)
    }
    if container.contains(.givenName) {
        self.givenName = try container.decode(String?.self, forKey: .givenName)
    }
    if container.contains(.surname) {
        self.surname = try container.decode(String?.self, forKey: .surname)
    }
    if container.contains(.userType) {
        self.userType = try container.decode(UserTypeEnum?.self, forKey: .userType)
    }
    if container.contains(.accountEnabled) {
        self.accountEnabled = try container.decode(Bool?.self, forKey: .accountEnabled)
    }
    if container.contains(.displayName) {
        self.displayName = try container.decode(String?.self, forKey: .displayName)
    }
    if container.contains(.passwordProfile) {
        self.passwordProfile = try container.decode(PasswordProfileData?.self, forKey: .passwordProfile)
    }
    if container.contains(.userPrincipalName) {
        self.userPrincipalName = try container.decode(String?.self, forKey: .userPrincipalName)
    }
    if container.contains(.mailNickname) {
        self.mailNickname = try container.decode(String?.self, forKey: .mailNickname)
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
    if self.additionalProperties != nil { try container.encode(self.additionalProperties, forKey: .additionalProperties) }
    if self.immutableId != nil { try container.encode(self.immutableId, forKey: .immutableId) }
    if self.usageLocation != nil { try container.encode(self.usageLocation, forKey: .usageLocation) }
    if self.givenName != nil { try container.encode(self.givenName, forKey: .givenName) }
    if self.surname != nil { try container.encode(self.surname, forKey: .surname) }
    if self.userType != nil { try container.encode(self.userType, forKey: .userType) }
    if self.accountEnabled != nil { try container.encode(self.accountEnabled, forKey: .accountEnabled) }
    if self.displayName != nil { try container.encode(self.displayName, forKey: .displayName) }
    if self.passwordProfile != nil { try container.encode(self.passwordProfile as! PasswordProfileData?, forKey: .passwordProfile) }
    if self.userPrincipalName != nil { try container.encode(self.userPrincipalName, forKey: .userPrincipalName) }
    if self.mailNickname != nil { try container.encode(self.mailNickname, forKey: .mailNickname) }
  }
}

extension DataFactory {
  public static func createUserUpdateParametersProtocol() -> UserUpdateParametersProtocol {
    return UserUpdateParametersData()
  }
}
