// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OperationListResultProtocol is result of the request to list Logic operations. It contains a list of operations and
// a URL link to get the next set of results.
public protocol OperationListResultProtocol : Codable {
     var value: [OperationProtocol?]? { get set }
     var _nextLink: String? { get set }
}
