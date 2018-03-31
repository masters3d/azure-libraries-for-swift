// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewayRequestRoutingRulePropertiesFormatData : ApplicationGatewayRequestRoutingRulePropertiesFormatProtocol {
    public var ruleType: ApplicationGatewayRequestRoutingRuleTypeEnum?
    public var backendAddressPool: SubResourceProtocol?
    public var backendHttpSettings: SubResourceProtocol?
    public var httpListener: SubResourceProtocol?
    public var urlPathMap: SubResourceProtocol?
    public var redirectConfiguration: SubResourceProtocol?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case ruleType = "ruleType"
        case backendAddressPool = "backendAddressPool"
        case backendHttpSettings = "backendHttpSettings"
        case httpListener = "httpListener"
        case urlPathMap = "urlPathMap"
        case redirectConfiguration = "redirectConfiguration"
        case provisioningState = "provisioningState"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.ruleType) {
        self.ruleType = try container.decode(ApplicationGatewayRequestRoutingRuleTypeEnum?.self, forKey: .ruleType)
    }
    if container.contains(.backendAddressPool) {
        self.backendAddressPool = try container.decode(SubResourceData?.self, forKey: .backendAddressPool)
    }
    if container.contains(.backendHttpSettings) {
        self.backendHttpSettings = try container.decode(SubResourceData?.self, forKey: .backendHttpSettings)
    }
    if container.contains(.httpListener) {
        self.httpListener = try container.decode(SubResourceData?.self, forKey: .httpListener)
    }
    if container.contains(.urlPathMap) {
        self.urlPathMap = try container.decode(SubResourceData?.self, forKey: .urlPathMap)
    }
    if container.contains(.redirectConfiguration) {
        self.redirectConfiguration = try container.decode(SubResourceData?.self, forKey: .redirectConfiguration)
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
    if self.ruleType != nil { try container.encode(self.ruleType, forKey: .ruleType) }
    if self.backendAddressPool != nil { try container.encode(self.backendAddressPool as! SubResourceData?, forKey: .backendAddressPool) }
    if self.backendHttpSettings != nil { try container.encode(self.backendHttpSettings as! SubResourceData?, forKey: .backendHttpSettings) }
    if self.httpListener != nil { try container.encode(self.httpListener as! SubResourceData?, forKey: .httpListener) }
    if self.urlPathMap != nil { try container.encode(self.urlPathMap as! SubResourceData?, forKey: .urlPathMap) }
    if self.redirectConfiguration != nil { try container.encode(self.redirectConfiguration as! SubResourceData?, forKey: .redirectConfiguration) }
    if self.provisioningState != nil { try container.encode(self.provisioningState, forKey: .provisioningState) }
  }
}

extension DataFactory {
  public static func createApplicationGatewayRequestRoutingRulePropertiesFormatProtocol() -> ApplicationGatewayRequestRoutingRulePropertiesFormatProtocol {
    return ApplicationGatewayRequestRoutingRulePropertiesFormatData()
  }
}
