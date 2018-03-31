// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VaultPropertiesData : VaultPropertiesProtocol {
    public var tenantId: String
    public var sku: SkuProtocol
    public var accessPolicies: [AccessPolicyEntryProtocol?]?
    public var vaultUri: String?
    public var enabledForDeployment: Bool?
    public var enabledForDiskEncryption: Bool?
    public var enabledForTemplateDeployment: Bool?
    public var enableSoftDelete: Bool?
    public var createMode: CreateModeEnum?
    public var enablePurgeProtection: Bool?

        enum CodingKeys: String, CodingKey {case tenantId = "tenantId"
        case sku = "sku"
        case accessPolicies = "accessPolicies"
        case vaultUri = "vaultUri"
        case enabledForDeployment = "enabledForDeployment"
        case enabledForDiskEncryption = "enabledForDiskEncryption"
        case enabledForTemplateDeployment = "enabledForTemplateDeployment"
        case enableSoftDelete = "enableSoftDelete"
        case createMode = "createMode"
        case enablePurgeProtection = "enablePurgeProtection"
        }

  public init(tenantId: String, sku: SkuProtocol)  {
    self.tenantId = tenantId
    self.sku = sku
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.tenantId = try container.decode(String.self, forKey: .tenantId)
    self.sku = try container.decode(SkuData.self, forKey: .sku)
    if container.contains(.accessPolicies) {
        self.accessPolicies = try container.decode([AccessPolicyEntryData?]?.self, forKey: .accessPolicies)
    }
    if container.contains(.vaultUri) {
        self.vaultUri = try container.decode(String?.self, forKey: .vaultUri)
    }
    if container.contains(.enabledForDeployment) {
        self.enabledForDeployment = try container.decode(Bool?.self, forKey: .enabledForDeployment)
    }
    if container.contains(.enabledForDiskEncryption) {
        self.enabledForDiskEncryption = try container.decode(Bool?.self, forKey: .enabledForDiskEncryption)
    }
    if container.contains(.enabledForTemplateDeployment) {
        self.enabledForTemplateDeployment = try container.decode(Bool?.self, forKey: .enabledForTemplateDeployment)
    }
    if container.contains(.enableSoftDelete) {
        self.enableSoftDelete = try container.decode(Bool?.self, forKey: .enableSoftDelete)
    }
    if container.contains(.createMode) {
        self.createMode = try container.decode(CreateModeEnum?.self, forKey: .createMode)
    }
    if container.contains(.enablePurgeProtection) {
        self.enablePurgeProtection = try container.decode(Bool?.self, forKey: .enablePurgeProtection)
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
    try container.encode(self.tenantId, forKey: .tenantId)
    try container.encode(self.sku as! SkuData, forKey: .sku)
    if self.accessPolicies != nil {try container.encode(self.accessPolicies as! [AccessPolicyEntryData?]?, forKey: .accessPolicies)}
    if self.vaultUri != nil {try container.encode(self.vaultUri, forKey: .vaultUri)}
    if self.enabledForDeployment != nil {try container.encode(self.enabledForDeployment, forKey: .enabledForDeployment)}
    if self.enabledForDiskEncryption != nil {try container.encode(self.enabledForDiskEncryption, forKey: .enabledForDiskEncryption)}
    if self.enabledForTemplateDeployment != nil {try container.encode(self.enabledForTemplateDeployment, forKey: .enabledForTemplateDeployment)}
    if self.enableSoftDelete != nil {try container.encode(self.enableSoftDelete, forKey: .enableSoftDelete)}
    if self.createMode != nil {try container.encode(self.createMode, forKey: .createMode)}
    if self.enablePurgeProtection != nil {try container.encode(self.enablePurgeProtection, forKey: .enablePurgeProtection)}
  }
}

extension DataFactory {
  public static func createVaultPropertiesProtocol(tenantId: String, sku: SkuProtocol) -> VaultPropertiesProtocol {
    return VaultPropertiesData(tenantId: tenantId, sku: sku)
  }
}
