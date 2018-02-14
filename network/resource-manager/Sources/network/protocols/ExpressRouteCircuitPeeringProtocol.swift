// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ExpressRouteCircuitPeeringProtocol is peering in an ExpressRouteCircuit resource.
public protocol ExpressRouteCircuitPeeringProtocol : SubResourceProtocol {
     var properties: ExpressRouteCircuitPeeringPropertiesFormatProtocol? { get set }
     var name: String? { get set }
     var etag: String? { get set }
}
