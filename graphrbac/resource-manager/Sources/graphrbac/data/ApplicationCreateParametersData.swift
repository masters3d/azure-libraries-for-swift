// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationCreateParametersData : ApplicationCreateParametersProtocol {
    public var additionalProperties: [String:[String: String?]]?
    public var availableToOtherTenants: Bool
    public var displayName: String
    public var homepage: String?
    public var identifierUris: [String]
    public var replyUrls: [String]?
    public var keyCredentials: [KeyCredentialProtocol?]?
    public var passwordCredentials: [PasswordCredentialProtocol?]?
    public var oauth2AllowImplicitFlow: Bool?
    public var requiredResourceAccess: [RequiredResourceAccessProtocol?]?

        enum CodingKeys: String, CodingKey {case additionalProperties = ""
        case availableToOtherTenants = "availableToOtherTenants"
        case displayName = "displayName"
        case homepage = "homepage"
        case identifierUris = "identifierUris"
        case replyUrls = "replyUrls"
        case keyCredentials = "keyCredentials"
        case passwordCredentials = "passwordCredentials"
        case oauth2AllowImplicitFlow = "oauth2AllowImplicitFlow"
        case requiredResourceAccess = "requiredResourceAccess"
        }

  public init(availableToOtherTenants: Bool, displayName: String, identifierUris: [String])  {
    self.availableToOtherTenants = availableToOtherTenants
    self.displayName = displayName
    self.identifierUris = identifierUris
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.additionalProperties) {
        self.additionalProperties = try container.decode([String:[String: String?]]?.self, forKey: .additionalProperties)
    }
    self.availableToOtherTenants = try container.decode(Bool.self, forKey: .availableToOtherTenants)
    self.displayName = try container.decode(String.self, forKey: .displayName)
    if container.contains(.homepage) {
        self.homepage = try container.decode(String?.self, forKey: .homepage)
    }
    self.identifierUris = try container.decode([String].self, forKey: .identifierUris)
    if container.contains(.replyUrls) {
        self.replyUrls = try container.decode([String]?.self, forKey: .replyUrls)
    }
    if container.contains(.keyCredentials) {
        self.keyCredentials = try container.decode([KeyCredentialData?]?.self, forKey: .keyCredentials)
    }
    if container.contains(.passwordCredentials) {
        self.passwordCredentials = try container.decode([PasswordCredentialData?]?.self, forKey: .passwordCredentials)
    }
    if container.contains(.oauth2AllowImplicitFlow) {
        self.oauth2AllowImplicitFlow = try container.decode(Bool?.self, forKey: .oauth2AllowImplicitFlow)
    }
    if container.contains(.requiredResourceAccess) {
        self.requiredResourceAccess = try container.decode([RequiredResourceAccessData?]?.self, forKey: .requiredResourceAccess)
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
    try container.encode(self.availableToOtherTenants, forKey: .availableToOtherTenants)
    try container.encode(self.displayName, forKey: .displayName)
    if self.homepage != nil {try container.encode(self.homepage, forKey: .homepage)}
    try container.encode(self.identifierUris as! [String], forKey: .identifierUris)
    if self.replyUrls != nil {try container.encode(self.replyUrls as! [String]?, forKey: .replyUrls)}
    if self.keyCredentials != nil {try container.encode(self.keyCredentials as! [KeyCredentialData?]?, forKey: .keyCredentials)}
    if self.passwordCredentials != nil {try container.encode(self.passwordCredentials as! [PasswordCredentialData?]?, forKey: .passwordCredentials)}
    if self.oauth2AllowImplicitFlow != nil {try container.encode(self.oauth2AllowImplicitFlow, forKey: .oauth2AllowImplicitFlow)}
    if self.requiredResourceAccess != nil {try container.encode(self.requiredResourceAccess as! [RequiredResourceAccessData?]?, forKey: .requiredResourceAccess)}
  }
}

extension DataFactory {
  public static func createApplicationCreateParametersProtocol(availableToOtherTenants: Bool, displayName: String, identifierUris: [String]) -> ApplicationCreateParametersProtocol {
    return ApplicationCreateParametersData(availableToOtherTenants: availableToOtherTenants, displayName: displayName, identifierUris: identifierUris)
  }
}
