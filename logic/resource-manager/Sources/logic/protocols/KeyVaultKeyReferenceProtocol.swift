// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// KeyVaultKeyReferenceProtocol is the reference to the key vault key.
public protocol KeyVaultKeyReferenceProtocol : Codable {
     var keyVault: KeyVaultKeyReferenceKeyVaultProtocol { get set }
     var keyName: String { get set }
     var keyVersion: String? { get set }
}
