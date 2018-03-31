// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ExpressRouteCircuitServiceProviderPropertiesProtocol is contains ServiceProviderProperties in an
// ExpressRouteCircuit.
public protocol ExpressRouteCircuitServiceProviderPropertiesProtocol : Codable {
     var serviceProviderName: String? { get set }
     var peeringLocation: String? { get set }
     var bandwidthInMbps: Int32? { get set }
}
