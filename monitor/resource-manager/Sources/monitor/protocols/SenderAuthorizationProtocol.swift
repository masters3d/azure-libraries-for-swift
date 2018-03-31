// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SenderAuthorizationProtocol is the authorization used by the user who has performed the operation that led to this
// event. This captures the RBAC properties of the event. These usually include the 'action', 'role' and the 'scope'
public protocol SenderAuthorizationProtocol : Codable {
     var action: String? { get set }
     var role: String? { get set }
     var scope: String? { get set }
}
