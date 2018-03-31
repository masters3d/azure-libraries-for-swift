// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NetworkInterfaceListResultProtocol is response for the ListNetworkInterface API service call.
public protocol NetworkInterfaceListResultProtocol : Codable {
     var value: [NetworkInterfaceProtocol?]? { get set }
     var _nextLink: String? { get set }
}
