// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VerificationIPFlowResultProtocol is results of IP flow verification on the target resource.
public protocol VerificationIPFlowResultProtocol : Codable {
     var access: AccessEnum? { get set }
     var ruleName: String? { get set }
}
