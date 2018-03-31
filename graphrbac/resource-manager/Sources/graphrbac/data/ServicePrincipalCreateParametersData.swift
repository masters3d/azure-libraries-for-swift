// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ServicePrincipalCreateParametersData : ServicePrincipalCreateParametersProtocol {
    public var additionalProperties: [String:[String: String?]]?
    public var appId: String
    public var accountEnabled: Bool
    public var keyCredentials: [KeyCredentialProtocol?]?
    public var passwordCredentials: [PasswordCredentialProtocol?]?

        enum CodingKeys: String, CodingKey {case additionalProperties = ""
        case appId = "appId"
        case accountEnabled = "accountEnabled"
        case keyCredentials = "keyCredentials"
        case passwordCredentials = "passwordCredentials"
        }

  public init(appId: String, accountEnabled: Bool)  {
    self.appId = appId
    self.accountEnabled = accountEnabled
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.additionalProperties) {
        self.additionalProperties = try container.decode([String:[String: String?]]?.self, forKey: .additionalProperties)
    }
    self.appId = try container.decode(String.self, forKey: .appId)
    self.accountEnabled = try container.decode(Bool.self, forKey: .accountEnabled)
    if container.contains(.keyCredentials) {
        self.keyCredentials = try container.decode([KeyCredentialData?]?.self, forKey: .keyCredentials)
    }
    if container.contains(.passwordCredentials) {
        self.passwordCredentials = try container.decode([PasswordCredentialData?]?.self, forKey: .passwordCredentials)
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
    if self.additionalProperties != nil {try container.encode(self.additionalProperties, forKey: .additionalProperties)}
    try container.encode(self.appId, forKey: .appId)
    try container.encode(self.accountEnabled, forKey: .accountEnabled)
    if self.keyCredentials != nil {try container.encode(self.keyCredentials as! [KeyCredentialData?]?, forKey: .keyCredentials)}
    if self.passwordCredentials != nil {try container.encode(self.passwordCredentials as! [PasswordCredentialData?]?, forKey: .passwordCredentials)}
  }
}

extension DataFactory {
  public static func createServicePrincipalCreateParametersProtocol(appId: String, accountEnabled: Bool) -> ServicePrincipalCreateParametersProtocol {
    return ServicePrincipalCreateParametersData(appId: appId, accountEnabled: accountEnabled)
  }
}
