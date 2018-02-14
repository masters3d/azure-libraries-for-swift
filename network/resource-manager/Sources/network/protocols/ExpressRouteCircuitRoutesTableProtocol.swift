// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ExpressRouteCircuitRoutesTableProtocol is the routes table associated with the ExpressRouteCircuit
public protocol ExpressRouteCircuitRoutesTableProtocol : Codable {
     var network: String? { get set }
     var nextHop: String? { get set }
     var locPrf: String? { get set }
     var weight: Int32? { get set }
     var path: String? { get set }
}
