// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PrivateRegistryCredentialsProtocol is credentials to access a container image in a private repository.
public protocol PrivateRegistryCredentialsProtocol : Codable {
     var username: String { get set }
     var password: String? { get set }
     var passwordSecretReference: KeyVaultSecretReferenceProtocol? { get set }
}
