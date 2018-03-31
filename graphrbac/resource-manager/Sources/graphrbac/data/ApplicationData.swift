// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationData : ApplicationProtocol, DirectoryObjectProtocol {
    public var additionalProperties: [String:[String: String?]]?
    public var objectId: String?
    public var deletionTimestamp: Date?
    public var appId: String?
    public var appPermissions: [String]?
    public var availableToOtherTenants: Bool?
    public var displayName: String?
    public var identifierUris: [String]?
    public var replyUrls: [String]?
    public var homepage: String?
    public var oauth2AllowImplicitFlow: Bool?

        enum CodingKeys: String, CodingKey {case additionalProperties = ""
        case objectId = "objectId"
        case deletionTimestamp = "deletionTimestamp"
        case appId = "appId"
        case appPermissions = "appPermissions"
        case availableToOtherTenants = "availableToOtherTenants"
        case displayName = "displayName"
        case identifierUris = "identifierUris"
        case replyUrls = "replyUrls"
        case homepage = "homepage"
        case oauth2AllowImplicitFlow = "oauth2AllowImplicitFlow"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.additionalProperties) {
        self.additionalProperties = try container.decode([String:[String: String?]]?.self, forKey: .additionalProperties)
    }
    if container.contains(.objectId) {
        self.objectId = try container.decode(String?.self, forKey: .objectId)
    }
    if container.contains(.deletionTimestamp) {
        self.deletionTimestamp = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .deletionTimestamp)), format: .dateTime)
    }
    if container.contains(.appId) {
        self.appId = try container.decode(String?.self, forKey: .appId)
    }
    if container.contains(.appPermissions) {
        self.appPermissions = try container.decode([String]?.self, forKey: .appPermissions)
    }
    if container.contains(.availableToOtherTenants) {
        self.availableToOtherTenants = try container.decode(Bool?.self, forKey: .availableToOtherTenants)
    }
    if container.contains(.displayName) {
        self.displayName = try container.decode(String?.self, forKey: .displayName)
    }
    if container.contains(.identifierUris) {
        self.identifierUris = try container.decode([String]?.self, forKey: .identifierUris)
    }
    if container.contains(.replyUrls) {
        self.replyUrls = try container.decode([String]?.self, forKey: .replyUrls)
    }
    if container.contains(.homepage) {
        self.homepage = try container.decode(String?.self, forKey: .homepage)
    }
    if container.contains(.oauth2AllowImplicitFlow) {
        self.oauth2AllowImplicitFlow = try container.decode(Bool?.self, forKey: .oauth2AllowImplicitFlow)
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
    if self.objectId != nil { try container.encode(self.objectId, forKey: .objectId) }
    if self.deletionTimestamp != nil {
        try container.encode(DateConverter.toString(date: self.deletionTimestamp!, format: .dateTime), forKey: .deletionTimestamp)
    }
    if self.appId != nil { try container.encode(self.appId, forKey: .appId) }
    if self.appPermissions != nil { try container.encode(self.appPermissions as! [String]?, forKey: .appPermissions) }
    if self.availableToOtherTenants != nil { try container.encode(self.availableToOtherTenants, forKey: .availableToOtherTenants) }
    if self.displayName != nil { try container.encode(self.displayName, forKey: .displayName) }
    if self.identifierUris != nil { try container.encode(self.identifierUris as! [String]?, forKey: .identifierUris) }
    if self.replyUrls != nil { try container.encode(self.replyUrls as! [String]?, forKey: .replyUrls) }
    if self.homepage != nil { try container.encode(self.homepage, forKey: .homepage) }
    if self.oauth2AllowImplicitFlow != nil { try container.encode(self.oauth2AllowImplicitFlow, forKey: .oauth2AllowImplicitFlow) }
  }
}

extension DataFactory {
  public static func createApplicationProtocol() -> ApplicationProtocol {
    return ApplicationData()
  }
}
