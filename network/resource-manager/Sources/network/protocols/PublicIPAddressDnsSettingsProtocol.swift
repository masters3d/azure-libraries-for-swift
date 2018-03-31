// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PublicIPAddressDnsSettingsProtocol is contains FQDN of the DNS record associated with the public IP address
public protocol PublicIPAddressDnsSettingsProtocol : Codable {
     var domainNameLabel: String? { get set }
     var fqdn: String? { get set }
     var reverseFqdn: String? { get set }
}
