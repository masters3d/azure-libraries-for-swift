// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RuleWebhookActionProtocol is specifies the action to post to service when the rule condition is evaluated. The
// discriminator is always RuleWebhookAction in this case.
public protocol RuleWebhookActionProtocol : RuleActionProtocol {
     var serviceUri: String? { get set }
     var properties: [String:String]? { get set }
}
