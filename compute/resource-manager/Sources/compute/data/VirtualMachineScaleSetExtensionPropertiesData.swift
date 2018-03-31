// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetExtensionPropertiesData : VirtualMachineScaleSetExtensionPropertiesProtocol {
    public var forceUpdateTag: String?
    public var publisher: String?
    public var type: String?
    public var typeHandlerVersion: String?
    public var autoUpgradeMinorVersion: Bool?
    public var settings: [String: String?]?
    public var protectedSettings: [String: String?]?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case forceUpdateTag = "forceUpdateTag"
        case publisher = "publisher"
        case type = "type"
        case typeHandlerVersion = "typeHandlerVersion"
        case autoUpgradeMinorVersion = "autoUpgradeMinorVersion"
        case settings = "settings"
        case protectedSettings = "protectedSettings"
        case provisioningState = "provisioningState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.forceUpdateTag) {
        self.forceUpdateTag = try container.decode(String?.self, forKey: .forceUpdateTag)
    }
    if container.contains(.publisher) {
        self.publisher = try container.decode(String?.self, forKey: .publisher)
    }
    if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
    }
    if container.contains(.typeHandlerVersion) {
        self.typeHandlerVersion = try container.decode(String?.self, forKey: .typeHandlerVersion)
    }
    if container.contains(.autoUpgradeMinorVersion) {
        self.autoUpgradeMinorVersion = try container.decode(Bool?.self, forKey: .autoUpgradeMinorVersion)
    }
    if container.contains(.settings) {
        self.settings = try container.decode([String: String?]?.self, forKey: .settings)
    }
    if container.contains(.protectedSettings) {
        self.protectedSettings = try container.decode([String: String?]?.self, forKey: .protectedSettings)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
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
    if self.forceUpdateTag != nil {try container.encode(self.forceUpdateTag, forKey: .forceUpdateTag)}
    if self.publisher != nil {try container.encode(self.publisher, forKey: .publisher)}
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.typeHandlerVersion != nil {try container.encode(self.typeHandlerVersion, forKey: .typeHandlerVersion)}
    if self.autoUpgradeMinorVersion != nil {try container.encode(self.autoUpgradeMinorVersion, forKey: .autoUpgradeMinorVersion)}
    if self.settings != nil {try container.encode(self.settings, forKey: .settings)}
    if self.protectedSettings != nil {try container.encode(self.protectedSettings, forKey: .protectedSettings)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetExtensionPropertiesProtocol() -> VirtualMachineScaleSetExtensionPropertiesProtocol {
    return VirtualMachineScaleSetExtensionPropertiesData()
  }
}
