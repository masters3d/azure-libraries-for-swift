// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// KeyVaultAndSecretReferenceProtocol is key Vault Secret Url and vault id of the encryption key
public protocol KeyVaultAndSecretReferenceProtocol : Codable {
     var sourceVault: SourceVaultProtocol { get set }
     var secretUrl: String { get set }
}