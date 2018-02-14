// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ProtectableItemPropertiesData : ProtectableItemPropertiesProtocol {
    public var friendlyName: String?
    public var protectionStatus: String?
    public var replicationProtectedItemId: String?
    public var recoveryServicesProviderId: String?
    public var protectionReadinessErrors: [String]?
    public var supportedReplicationProviders: [String]?
    public var customDetails: ConfigurationSettingsProtocol?

        enum CodingKeys: String, CodingKey {case friendlyName = "friendlyName"
        case protectionStatus = "protectionStatus"
        case replicationProtectedItemId = "replicationProtectedItemId"
        case recoveryServicesProviderId = "recoveryServicesProviderId"
        case protectionReadinessErrors = "protectionReadinessErrors"
        case supportedReplicationProviders = "supportedReplicationProviders"
        case customDetails = "customDetails"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.protectionStatus) {
        self.protectionStatus = try container.decode(String?.self, forKey: .protectionStatus)
    }
    if container.contains(.replicationProtectedItemId) {
        self.replicationProtectedItemId = try container.decode(String?.self, forKey: .replicationProtectedItemId)
    }
    if container.contains(.recoveryServicesProviderId) {
        self.recoveryServicesProviderId = try container.decode(String?.self, forKey: .recoveryServicesProviderId)
    }
    if container.contains(.protectionReadinessErrors) {
        self.protectionReadinessErrors = try container.decode([String]?.self, forKey: .protectionReadinessErrors)
    }
    if container.contains(.supportedReplicationProviders) {
        self.supportedReplicationProviders = try container.decode([String]?.self, forKey: .supportedReplicationProviders)
    }
    if container.contains(.customDetails) {
        self.customDetails = try container.decode(ConfigurationSettingsData?.self, forKey: .customDetails)
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
    if self.protectionStatus != nil {try container.encode(self.protectionStatus, forKey: .protectionStatus)}
    if self.replicationProtectedItemId != nil {try container.encode(self.replicationProtectedItemId, forKey: .replicationProtectedItemId)}
    if self.recoveryServicesProviderId != nil {try container.encode(self.recoveryServicesProviderId, forKey: .recoveryServicesProviderId)}
    if self.protectionReadinessErrors != nil {try container.encode(self.protectionReadinessErrors as! [String]?, forKey: .protectionReadinessErrors)}
    if self.supportedReplicationProviders != nil {try container.encode(self.supportedReplicationProviders as! [String]?, forKey: .supportedReplicationProviders)}
    if self.customDetails != nil {try container.encode(self.customDetails as! ConfigurationSettingsData?, forKey: .customDetails)}
  }
}

extension DataFactory {
  public static func createProtectableItemPropertiesProtocol() -> ProtectableItemPropertiesProtocol {
    return ProtectableItemPropertiesData()
  }
}
