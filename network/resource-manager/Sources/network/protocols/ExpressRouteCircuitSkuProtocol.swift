// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ExpressRouteCircuitSkuProtocol is contains SKU in an ExpressRouteCircuit.
public protocol ExpressRouteCircuitSkuProtocol : Codable {
     var name: String? { get set }
     var tier: ExpressRouteCircuitSkuTierEnum? { get set }
     var family: ExpressRouteCircuitSkuFamilyEnum? { get set }
}
