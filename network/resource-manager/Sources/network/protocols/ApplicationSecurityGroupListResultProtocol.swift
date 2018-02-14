// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationSecurityGroupListResultProtocol is a list of application security groups.
public protocol ApplicationSecurityGroupListResultProtocol : Codable {
     var value: [ApplicationSecurityGroupProtocol?]? { get set }
     var _nextLink: String? { get set }
}
