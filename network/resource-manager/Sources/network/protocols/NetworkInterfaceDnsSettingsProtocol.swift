// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NetworkInterfaceDnsSettingsProtocol is DNS settings of a network interface.
public protocol NetworkInterfaceDnsSettingsProtocol : Codable {
     var dnsServers: [String]? { get set }
     var appliedDnsServers: [String]? { get set }
     var internalDnsNameLabel: String? { get set }
     var internalFqdn: String? { get set }
     var internalDomainNameSuffix: String? { get set }
}
