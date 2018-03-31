// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InboundNatRulePropertiesFormatData : InboundNatRulePropertiesFormatProtocol {
    public var frontendIPConfiguration: SubResourceProtocol?
    public var backendIPConfiguration: NetworkInterfaceIPConfigurationProtocol?
    public var _protocol: TransportProtocolEnum?
    public var frontendPort: Int32?
    public var backendPort: Int32?
    public var idleTimeoutInMinutes: Int32?
    public var enableFloatingIP: Bool?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case frontendIPConfiguration = "frontendIPConfiguration"
        case backendIPConfiguration = "backendIPConfiguration"
        case _protocol = "protocol"
        case frontendPort = "frontendPort"
        case backendPort = "backendPort"
        case idleTimeoutInMinutes = "idleTimeoutInMinutes"
        case enableFloatingIP = "enableFloatingIP"
        case provisioningState = "provisioningState"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.frontendIPConfiguration) {
        self.frontendIPConfiguration = try container.decode(SubResourceData?.self, forKey: .frontendIPConfiguration)
    }
    if container.contains(.backendIPConfiguration) {
        self.backendIPConfiguration = try container.decode(NetworkInterfaceIPConfigurationData?.self, forKey: .backendIPConfiguration)
    }
    if container.contains(._protocol) {
        self._protocol = try container.decode(TransportProtocolEnum?.self, forKey: ._protocol)
    }
    if container.contains(.frontendPort) {
        self.frontendPort = try container.decode(Int32?.self, forKey: .frontendPort)
    }
    if container.contains(.backendPort) {
        self.backendPort = try container.decode(Int32?.self, forKey: .backendPort)
    }
    if container.contains(.idleTimeoutInMinutes) {
        self.idleTimeoutInMinutes = try container.decode(Int32?.self, forKey: .idleTimeoutInMinutes)
    }
    if container.contains(.enableFloatingIP) {
        self.enableFloatingIP = try container.decode(Bool?.self, forKey: .enableFloatingIP)
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
    if self.frontendIPConfiguration != nil { try container.encode(self.frontendIPConfiguration as! SubResourceData?, forKey: .frontendIPConfiguration) }
    if self.backendIPConfiguration != nil { try container.encode(self.backendIPConfiguration as! NetworkInterfaceIPConfigurationData?, forKey: .backendIPConfiguration) }
    if self._protocol != nil { try container.encode(self._protocol, forKey: ._protocol) }
    if self.frontendPort != nil { try container.encode(self.frontendPort, forKey: .frontendPort) }
    if self.backendPort != nil { try container.encode(self.backendPort, forKey: .backendPort) }
    if self.idleTimeoutInMinutes != nil { try container.encode(self.idleTimeoutInMinutes, forKey: .idleTimeoutInMinutes) }
    if self.enableFloatingIP != nil { try container.encode(self.enableFloatingIP, forKey: .enableFloatingIP) }
    if self.provisioningState != nil { try container.encode(self.provisioningState, forKey: .provisioningState) }
  }
}

extension DataFactory {
  public static func createInboundNatRulePropertiesFormatProtocol() -> InboundNatRulePropertiesFormatProtocol {
    return InboundNatRulePropertiesFormatData()
  }
}
