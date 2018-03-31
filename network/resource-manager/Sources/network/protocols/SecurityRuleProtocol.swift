// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SecurityRuleProtocol is network security rule.
public protocol SecurityRuleProtocol : SubResourceProtocol {
     var properties: SecurityRulePropertiesFormatProtocol? { get set }
     var name: String? { get set }
     var etag: String? { get set }
}
