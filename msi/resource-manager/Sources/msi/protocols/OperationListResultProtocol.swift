// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OperationListResultProtocol is a list of operations supported by Microsoft.ManagedIdentity Resource Provider.
public protocol OperationListResultProtocol : Codable {
     var value: [OperationProtocol?]? { get set }
     var _nextLink: String? { get set }
}