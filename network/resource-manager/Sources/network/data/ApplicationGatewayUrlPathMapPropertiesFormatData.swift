// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewayUrlPathMapPropertiesFormatData : ApplicationGatewayUrlPathMapPropertiesFormatProtocol {
    public var defaultBackendAddressPool: SubResourceProtocol?
    public var defaultBackendHttpSettings: SubResourceProtocol?
    public var defaultRedirectConfiguration: SubResourceProtocol?
    public var pathRules: [ApplicationGatewayPathRuleProtocol?]?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case defaultBackendAddressPool = "defaultBackendAddressPool"
        case defaultBackendHttpSettings = "defaultBackendHttpSettings"
        case defaultRedirectConfiguration = "defaultRedirectConfiguration"
        case pathRules = "pathRules"
        case provisioningState = "provisioningState"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.defaultBackendAddressPool) {
        self.defaultBackendAddressPool = try container.decode(SubResourceData?.self, forKey: .defaultBackendAddressPool)
    }
    if container.contains(.defaultBackendHttpSettings) {
        self.defaultBackendHttpSettings = try container.decode(SubResourceData?.self, forKey: .defaultBackendHttpSettings)
    }
    if container.contains(.defaultRedirectConfiguration) {
        self.defaultRedirectConfiguration = try container.decode(SubResourceData?.self, forKey: .defaultRedirectConfiguration)
    }
    if container.contains(.pathRules) {
        self.pathRules = try container.decode([ApplicationGatewayPathRuleData?]?.self, forKey: .pathRules)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
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
    if self.defaultBackendAddressPool != nil { try container.encode(self.defaultBackendAddressPool as! SubResourceData?, forKey: .defaultBackendAddressPool) }
    if self.defaultBackendHttpSettings != nil { try container.encode(self.defaultBackendHttpSettings as! SubResourceData?, forKey: .defaultBackendHttpSettings) }
    if self.defaultRedirectConfiguration != nil { try container.encode(self.defaultRedirectConfiguration as! SubResourceData?, forKey: .defaultRedirectConfiguration) }
    if self.pathRules != nil { try container.encode(self.pathRules as! [ApplicationGatewayPathRuleData?]?, forKey: .pathRules) }
    if self.provisioningState != nil { try container.encode(self.provisioningState, forKey: .provisioningState) }
  }
}

extension DataFactory {
  public static func createApplicationGatewayUrlPathMapPropertiesFormatProtocol() -> ApplicationGatewayUrlPathMapPropertiesFormatProtocol {
    return ApplicationGatewayUrlPathMapPropertiesFormatData()
  }
}
