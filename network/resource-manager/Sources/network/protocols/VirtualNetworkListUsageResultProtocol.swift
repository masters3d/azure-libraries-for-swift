// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualNetworkListUsageResultProtocol is response for the virtual networks GetUsage API service call.
public protocol VirtualNetworkListUsageResultProtocol : Codable {
     var value: [VirtualNetworkUsageProtocol?]? { get set }
     var _nextLink: String? { get set }
}
