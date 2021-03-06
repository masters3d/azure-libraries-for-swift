// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EffectiveNetworkSecurityGroupListResultProtocol is response for list effective network security groups API service
// call.
public protocol EffectiveNetworkSecurityGroupListResultProtocol : Codable {
     var value: [EffectiveNetworkSecurityGroupProtocol?]? { get set }
     var _nextLink: String? { get set }
}
