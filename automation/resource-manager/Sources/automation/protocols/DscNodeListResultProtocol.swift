// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DscNodeListResultProtocol is the response model for the list dsc nodes operation.
public protocol DscNodeListResultProtocol : Codable {
     var value: [DscNodeProtocol?]? { get set }
     var _nextLink: String? { get set }
}
