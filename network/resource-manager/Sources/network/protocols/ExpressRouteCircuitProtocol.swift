// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ExpressRouteCircuitProtocol is expressRouteCircuit resource
public protocol ExpressRouteCircuitProtocol : ResourceProtocol {
     var sku: ExpressRouteCircuitSkuProtocol? { get set }
     var properties: ExpressRouteCircuitPropertiesFormatProtocol? { get set }
     var etag: String? { get set }
}
