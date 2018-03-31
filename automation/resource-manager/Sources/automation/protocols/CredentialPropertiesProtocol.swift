// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CredentialPropertiesProtocol is definition of the credential properties
public protocol CredentialPropertiesProtocol : Codable {
     var userName: String? { get set }
     var creationTime: Date? { get set }
     var lastModifiedTime: Date? { get set }
     var description: String? { get set }
}
