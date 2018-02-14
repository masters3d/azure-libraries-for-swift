// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// LocalNetworkGatewayPropertiesFormatProtocol is localNetworkGateway properties
public protocol LocalNetworkGatewayPropertiesFormatProtocol : Codable {
     var localNetworkAddressSpace: AddressSpaceProtocol? { get set }
     var gatewayIpAddress: String? { get set }
     var bgpSettings: BgpSettingsProtocol? { get set }
     var resourceGuid: String? { get set }
     var provisioningState: String? { get set }
}
