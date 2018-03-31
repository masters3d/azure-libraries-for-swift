// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualNetworkGatewayIPConfigurationPropertiesFormatData : VirtualNetworkGatewayIPConfigurationPropertiesFormatProtocol {
    public var privateIPAllocationMethod: IPAllocationMethodEnum?
    public var subnet: SubResourceProtocol?
    public var publicIPAddress: SubResourceProtocol?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case privateIPAllocationMethod = "privateIPAllocationMethod"
        case subnet = "subnet"
        case publicIPAddress = "publicIPAddress"
        case provisioningState = "provisioningState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.privateIPAllocationMethod) {
        self.privateIPAllocationMethod = try container.decode(IPAllocationMethodEnum?.self, forKey: .privateIPAllocationMethod)
    }
    if container.contains(.subnet) {
        self.subnet = try container.decode(SubResourceData?.self, forKey: .subnet)
    }
    if container.contains(.publicIPAddress) {
        self.publicIPAddress = try container.decode(SubResourceData?.self, forKey: .publicIPAddress)
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
    if self.privateIPAllocationMethod != nil {try container.encode(self.privateIPAllocationMethod, forKey: .privateIPAllocationMethod)}
    if self.subnet != nil {try container.encode(self.subnet as! SubResourceData?, forKey: .subnet)}
    if self.publicIPAddress != nil {try container.encode(self.publicIPAddress as! SubResourceData?, forKey: .publicIPAddress)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createVirtualNetworkGatewayIPConfigurationPropertiesFormatProtocol() -> VirtualNetworkGatewayIPConfigurationPropertiesFormatProtocol {
    return VirtualNetworkGatewayIPConfigurationPropertiesFormatData()
  }
}
