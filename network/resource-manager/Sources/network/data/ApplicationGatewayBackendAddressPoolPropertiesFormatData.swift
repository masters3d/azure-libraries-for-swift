// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewayBackendAddressPoolPropertiesFormatData : ApplicationGatewayBackendAddressPoolPropertiesFormatProtocol {
    public var backendIPConfigurations: [NetworkInterfaceIPConfigurationProtocol?]?
    public var backendAddresses: [ApplicationGatewayBackendAddressProtocol?]?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case backendIPConfigurations = "backendIPConfigurations"
        case backendAddresses = "backendAddresses"
        case provisioningState = "provisioningState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.backendIPConfigurations) {
        self.backendIPConfigurations = try container.decode([NetworkInterfaceIPConfigurationData?]?.self, forKey: .backendIPConfigurations)
    }
    if container.contains(.backendAddresses) {
        self.backendAddresses = try container.decode([ApplicationGatewayBackendAddressData?]?.self, forKey: .backendAddresses)
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
    if self.backendIPConfigurations != nil {try container.encode(self.backendIPConfigurations as! [NetworkInterfaceIPConfigurationData?]?, forKey: .backendIPConfigurations)}
    if self.backendAddresses != nil {try container.encode(self.backendAddresses as! [ApplicationGatewayBackendAddressData?]?, forKey: .backendAddresses)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createApplicationGatewayBackendAddressPoolPropertiesFormatProtocol() -> ApplicationGatewayBackendAddressPoolPropertiesFormatProtocol {
    return ApplicationGatewayBackendAddressPoolPropertiesFormatData()
  }
}
