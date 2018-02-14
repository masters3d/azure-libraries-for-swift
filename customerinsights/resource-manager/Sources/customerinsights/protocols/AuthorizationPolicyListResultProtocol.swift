// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AuthorizationPolicyListResultProtocol is the response of list authorization policy operation.
public protocol AuthorizationPolicyListResultProtocol : Codable {
     var value: [AuthorizationPolicyResourceFormatProtocol?]? { get set }
     var _nextLink: String? { get set }
}
