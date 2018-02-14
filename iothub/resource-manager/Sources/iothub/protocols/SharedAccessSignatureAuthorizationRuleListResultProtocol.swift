// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SharedAccessSignatureAuthorizationRuleListResultProtocol is the list of shared access policies with a next link.
public protocol SharedAccessSignatureAuthorizationRuleListResultProtocol : Codable {
     var value: [SharedAccessSignatureAuthorizationRuleProtocol?]? { get set }
     var _nextLink: String? { get set }
}