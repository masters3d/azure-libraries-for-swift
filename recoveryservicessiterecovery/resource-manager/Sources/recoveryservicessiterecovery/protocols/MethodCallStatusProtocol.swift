// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MethodCallStatusProtocol is reports method status where exception was raised.
public protocol MethodCallStatusProtocol : Codable {
     var isVirtual: String? { get set }
     var parameters: [String]? { get set }
     var containsGenericParameters: String? { get set }
}