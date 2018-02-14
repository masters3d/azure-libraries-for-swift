// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VaultPatchPropertiesData : VaultPatchPropertiesProtocol {
    public var tenantId: String?
    public var sku: SkuProtocol?
    public var accessPolicies: [AccessPolicyEntryProtocol?]?
    public var enabledForDeployment: Bool?
    public var enabledForDiskEncryption: Bool?
    public var enabledForTemplateDeployment: Bool?
    public var enableSoftDelete: Bool?
    public var createMode: CreateModeEnum?

        enum CodingKeys: String, CodingKey {case tenantId = "tenantId"
        case sku = "sku"
        case accessPolicies = "accessPolicies"
        case enabledForDeployment = "enabledForDeployment"
        case enabledForDiskEncryption = "enabledForDiskEncryption"
        case enabledForTemplateDeployment = "enabledForTemplateDeployment"
        case enableSoftDelete = "enableSoftDelete"
        case createMode = "createMode"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.tenantId) {
        self.tenantId = try container.decode(String?.self, forKey: .tenantId)
    }
    if container.contains(.sku) {
        self.sku = try container.decode(SkuData?.self, forKey: .sku)
    }
    if container.contains(.accessPolicies) {
        self.accessPolicies = try container.decode([AccessPolicyEntryData?]?.self, forKey: .accessPolicies)
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
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.tenantId != nil {try container.encode(self.tenantId, forKey: .tenantId)}
    if self.sku != nil {try container.encode(self.sku as! SkuData?, forKey: .sku)}
    if self.accessPolicies != nil {try container.encode(self.accessPolicies as! [AccessPolicyEntryData?]?, forKey: .accessPolicies)}
    if self.enabledForDeployment != nil {try container.encode(self.enabledForDeployment, forKey: .enabledForDeployment)}
    if self.enabledForDiskEncryption != nil {try container.encode(self.enabledForDiskEncryption, forKey: .enabledForDiskEncryption)}
    if self.enabledForTemplateDeployment != nil {try container.encode(self.enabledForTemplateDeployment, forKey: .enabledForTemplateDeployment)}
    if self.enableSoftDelete != nil {try container.encode(self.enableSoftDelete, forKey: .enableSoftDelete)}
    if self.createMode != nil {try container.encode(self.createMode, forKey: .createMode)}
  }
}

extension DataFactory {
  public static func createVaultPatchPropertiesProtocol() -> VaultPatchPropertiesProtocol {
    return VaultPatchPropertiesData()
  }
}