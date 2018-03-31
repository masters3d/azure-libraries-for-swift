// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// UserIdentityProtocol is identity attributes of a lab user.
public protocol UserIdentityProtocol : Codable {
     var principalName: String? { get set }
     var principalId: String? { get set }
     var tenantId: String? { get set }
     var objectId: String? { get set }
     var appId: String? { get set }
}
