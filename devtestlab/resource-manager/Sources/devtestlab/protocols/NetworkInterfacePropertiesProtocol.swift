// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NetworkInterfacePropertiesProtocol is properties of a network interface.
public protocol NetworkInterfacePropertiesProtocol : Codable {
     var virtualNetworkId: String? { get set }
     var subnetId: String? { get set }
     var publicIpAddressId: String? { get set }
     var publicIpAddress: String? { get set }
     var privateIpAddress: String? { get set }
     var dnsName: String? { get set }
     var rdpAuthority: String? { get set }
     var sshAuthority: String? { get set }
     var sharedPublicIpAddressConfiguration: SharedPublicIpAddressConfigurationProtocol? { get set }
}
