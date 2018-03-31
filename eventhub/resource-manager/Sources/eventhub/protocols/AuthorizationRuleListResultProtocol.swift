// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AuthorizationRuleListResultProtocol is the response from the List namespace operation.
public protocol AuthorizationRuleListResultProtocol : Codable {
     var value: [AuthorizationRuleProtocol?]? { get set }
     var _nextLink: String? { get set }
}
