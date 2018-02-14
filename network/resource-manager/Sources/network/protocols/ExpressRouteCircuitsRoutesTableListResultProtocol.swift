// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ExpressRouteCircuitsRoutesTableListResultProtocol is response for ListRoutesTable associated with the Express Route
// Circuits API.
public protocol ExpressRouteCircuitsRoutesTableListResultProtocol : Codable {
     var value: [ExpressRouteCircuitRoutesTableProtocol?]? { get set }
     var _nextLink: String? { get set }
}
