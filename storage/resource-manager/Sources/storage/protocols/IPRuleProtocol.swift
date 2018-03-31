// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IPRuleProtocol is IP rule with specific IP or IP range in CIDR format.
public protocol IPRuleProtocol : Codable {
     var iPAddressOrRange: String { get set }
     var action: ActionEnum? { get set }
}
