// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualNetworkPeeringPropertiesFormatData : VirtualNetworkPeeringPropertiesFormatProtocol {
    public var allowVirtualNetworkAccess: Bool?
    public var allowForwardedTraffic: Bool?
    public var allowGatewayTransit: Bool?
    public var useRemoteGateways: Bool?
    public var remoteVirtualNetwork: SubResourceProtocol?
    public var remoteAddressSpace: AddressSpaceProtocol?
    public var peeringState: VirtualNetworkPeeringStateEnum?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case allowVirtualNetworkAccess = "allowVirtualNetworkAccess"
        case allowForwardedTraffic = "allowForwardedTraffic"
        case allowGatewayTransit = "allowGatewayTransit"
        case useRemoteGateways = "useRemoteGateways"
        case remoteVirtualNetwork = "remoteVirtualNetwork"
        case remoteAddressSpace = "remoteAddressSpace"
        case peeringState = "peeringState"
        case provisioningState = "provisioningState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.allowVirtualNetworkAccess) {
        self.allowVirtualNetworkAccess = try container.decode(Bool?.self, forKey: .allowVirtualNetworkAccess)
    }
    if container.contains(.allowForwardedTraffic) {
        self.allowForwardedTraffic = try container.decode(Bool?.self, forKey: .allowForwardedTraffic)
    }
    if container.contains(.allowGatewayTransit) {
        self.allowGatewayTransit = try container.decode(Bool?.self, forKey: .allowGatewayTransit)
    }
    if container.contains(.useRemoteGateways) {
        self.useRemoteGateways = try container.decode(Bool?.self, forKey: .useRemoteGateways)
    }
    if container.contains(.remoteVirtualNetwork) {
        self.remoteVirtualNetwork = try container.decode(SubResourceData?.self, forKey: .remoteVirtualNetwork)
    }
    if container.contains(.remoteAddressSpace) {
        self.remoteAddressSpace = try container.decode(AddressSpaceData?.self, forKey: .remoteAddressSpace)
    }
    if container.contains(.peeringState) {
        self.peeringState = try container.decode(VirtualNetworkPeeringStateEnum?.self, forKey: .peeringState)
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
    if self.allowVirtualNetworkAccess != nil {try container.encode(self.allowVirtualNetworkAccess, forKey: .allowVirtualNetworkAccess)}
    if self.allowForwardedTraffic != nil {try container.encode(self.allowForwardedTraffic, forKey: .allowForwardedTraffic)}
    if self.allowGatewayTransit != nil {try container.encode(self.allowGatewayTransit, forKey: .allowGatewayTransit)}
    if self.useRemoteGateways != nil {try container.encode(self.useRemoteGateways, forKey: .useRemoteGateways)}
    if self.remoteVirtualNetwork != nil {try container.encode(self.remoteVirtualNetwork as! SubResourceData?, forKey: .remoteVirtualNetwork)}
    if self.remoteAddressSpace != nil {try container.encode(self.remoteAddressSpace as! AddressSpaceData?, forKey: .remoteAddressSpace)}
    if self.peeringState != nil {try container.encode(self.peeringState, forKey: .peeringState)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createVirtualNetworkPeeringPropertiesFormatProtocol() -> VirtualNetworkPeeringPropertiesFormatProtocol {
    return VirtualNetworkPeeringPropertiesFormatData()
  }
}
