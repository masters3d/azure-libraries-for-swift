// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DatabaseOperationListResultProtocol is the response to a list database operations request
public protocol DatabaseOperationListResultProtocol : Codable {
     var value: [DatabaseOperationProtocol?]? { get set }
     var _nextLink: String? { get set }
}
