// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EncryptionDetailsProtocol is details needed if the VM was encrypted at the time of backup.
public protocol EncryptionDetailsProtocol : Codable {
     var encryptionEnabled: Bool? { get set }
     var kekUrl: String? { get set }
     var secretKeyUrl: String? { get set }
     var kekVaultId: String? { get set }
     var secretKeyVaultId: String? { get set }
}
