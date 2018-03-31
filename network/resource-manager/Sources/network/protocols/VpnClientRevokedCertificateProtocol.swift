// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VpnClientRevokedCertificateProtocol is VPN client revoked certificate of virtual network gateway.
public protocol VpnClientRevokedCertificateProtocol : SubResourceProtocol {
     var properties: VpnClientRevokedCertificatePropertiesFormatProtocol? { get set }
     var name: String? { get set }
     var etag: String? { get set }
}
