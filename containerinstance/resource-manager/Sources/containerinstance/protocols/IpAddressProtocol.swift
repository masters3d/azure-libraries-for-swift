// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IpAddressProtocol is IP address for the container group.
public protocol IpAddressProtocol : Codable {
     var ports: [PortProtocol] { get set }
     var type: String { get set }
     var ip: String? { get set }
     var dnsNameLabel: String? { get set }
     var fqdn: String? { get set }
}
