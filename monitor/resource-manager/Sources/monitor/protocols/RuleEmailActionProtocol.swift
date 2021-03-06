// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RuleEmailActionProtocol is specifies the action to send email when the rule condition is evaluated. The
// discriminator is always RuleEmailAction in this case.
public protocol RuleEmailActionProtocol : RuleActionProtocol {
     var sendToServiceOwners: Bool? { get set }
     var customEmails: [String]? { get set }
}
