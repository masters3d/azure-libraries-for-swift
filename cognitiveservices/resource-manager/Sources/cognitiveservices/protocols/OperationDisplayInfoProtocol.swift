// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OperationDisplayInfoProtocol is the operation supported by Cognitive Services.
public protocol OperationDisplayInfoProtocol : Codable {
     var description: String? { get set }
     var operation: String? { get set }
     var provider: String? { get set }
     var resource: String? { get set }
}
