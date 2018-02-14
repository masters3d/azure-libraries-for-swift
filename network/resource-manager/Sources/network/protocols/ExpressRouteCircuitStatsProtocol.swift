// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ExpressRouteCircuitStatsProtocol is contains stats associated with the peering.
public protocol ExpressRouteCircuitStatsProtocol : Codable {
     var primarybytesIn: Int64? { get set }
     var primarybytesOut: Int64? { get set }
     var secondarybytesIn: Int64? { get set }
     var secondarybytesOut: Int64? { get set }
}
