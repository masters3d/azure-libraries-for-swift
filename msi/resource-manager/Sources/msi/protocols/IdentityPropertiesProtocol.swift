// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IdentityPropertiesProtocol is the properties associated with the identity.
public protocol IdentityPropertiesProtocol : Codable {
     var tenantId: String? { get set }
     var principalId: String? { get set }
     var clientId: String? { get set }
     var clientSecretUrl: String? { get set }
}
