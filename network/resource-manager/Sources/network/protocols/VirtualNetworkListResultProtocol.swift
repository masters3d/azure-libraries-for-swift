// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualNetworkListResultProtocol is response for the ListVirtualNetworks API service call.
public protocol VirtualNetworkListResultProtocol : Codable {
     var value: [VirtualNetworkProtocol?]? { get set }
     var _nextLink: String? { get set }
}
