// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RouteListResultProtocol is response for the ListRoute API service call
public protocol RouteListResultProtocol : Codable {
     var value: [RouteProtocol?]? { get set }
     var _nextLink: String? { get set }
}
