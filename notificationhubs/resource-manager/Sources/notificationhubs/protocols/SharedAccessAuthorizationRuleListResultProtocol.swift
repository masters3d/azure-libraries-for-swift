// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SharedAccessAuthorizationRuleListResultProtocol is the response of the List Namespace operation.
public protocol SharedAccessAuthorizationRuleListResultProtocol : Codable {
     var value: [SharedAccessAuthorizationRuleResourceProtocol?]? { get set }
     var _nextLink: String? { get set }
}
