// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PublicIPAddressProtocol is public IP address resource.
public protocol PublicIPAddressProtocol : ResourceProtocol {
     var sku: PublicIPAddressSkuProtocol? { get set }
     var properties: PublicIPAddressPropertiesFormatProtocol? { get set }
     var etag: String? { get set }
     var zones: [String]? { get set }
}
