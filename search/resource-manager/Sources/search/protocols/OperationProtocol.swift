// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OperationProtocol is describes a REST API operation.
public protocol OperationProtocol : Codable {
     var name: String? { get set }
     var display: OperationDisplayProtocol? { get set }
}
