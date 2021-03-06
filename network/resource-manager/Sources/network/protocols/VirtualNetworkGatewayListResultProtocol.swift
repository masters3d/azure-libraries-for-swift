// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualNetworkGatewayListResultProtocol is response for the ListVirtualNetworkGateways API service call.
public protocol VirtualNetworkGatewayListResultProtocol : Codable {
     var value: [VirtualNetworkGatewayProtocol?]? { get set }
     var _nextLink: String? { get set }
}
