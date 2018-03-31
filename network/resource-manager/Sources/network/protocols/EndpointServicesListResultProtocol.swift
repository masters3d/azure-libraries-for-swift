// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EndpointServicesListResultProtocol is response for the ListAvailableEndpointServices API service call.
public protocol EndpointServicesListResultProtocol : Codable {
     var value: [EndpointServiceResultProtocol?]? { get set }
     var _nextLink: String? { get set }
}
