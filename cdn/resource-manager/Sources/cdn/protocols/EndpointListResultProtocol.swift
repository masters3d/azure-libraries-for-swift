// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EndpointListResultProtocol is result of the request to list endpoints. It contains a list of endpoint objects and a
// URL link to get the the next set of results.
public protocol EndpointListResultProtocol : Codable {
     var value: [EndpointProtocol?]? { get set }
     var _nextLink: String? { get set }
}
