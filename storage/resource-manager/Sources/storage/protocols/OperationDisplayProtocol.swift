// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OperationDisplayProtocol is display metadata associated with the operation.
public protocol OperationDisplayProtocol : Codable {
     var provider: String? { get set }
     var resource: String? { get set }
     var operation: String? { get set }
}
