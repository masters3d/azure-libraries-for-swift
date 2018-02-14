// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// LoadBalancerProtocol is loadBalancer resource
public protocol LoadBalancerProtocol : ResourceProtocol {
     var sku: LoadBalancerSkuProtocol? { get set }
     var properties: LoadBalancerPropertiesFormatProtocol? { get set }
     var etag: String? { get set }
}
