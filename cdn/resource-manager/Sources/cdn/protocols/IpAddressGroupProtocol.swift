// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IpAddressGroupProtocol is CDN Ip address group
public protocol IpAddressGroupProtocol : Codable {
     var deliveryRegion: String? { get set }
     var ipv4Addresses: [CidrIpAddressProtocol?]? { get set }
     var ipv6Addresses: [CidrIpAddressProtocol?]? { get set }
}
