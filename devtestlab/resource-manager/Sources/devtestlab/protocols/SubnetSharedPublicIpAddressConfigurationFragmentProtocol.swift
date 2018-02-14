// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SubnetSharedPublicIpAddressConfigurationFragmentProtocol is configuration for public IP address sharing.
public protocol SubnetSharedPublicIpAddressConfigurationFragmentProtocol : Codable {
     var allowedPorts: [PortFragmentProtocol?]? { get set }
}