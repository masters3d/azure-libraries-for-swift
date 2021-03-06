// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// KeyAndSecretDetailsProtocol is BEK is bitlocker key.
// KEK is encryption key for BEK
// If the VM was encrypted then we will store follwing details :
// 1. Secret(BEK) - Url + Backup Data + vaultId.
// 2. Key(KEK) - Url + Backup Data + vaultId.
// BEK and KEK can potentiallty have different vault ids.
public protocol KeyAndSecretDetailsProtocol : Codable {
     var kekDetails: KEKDetailsProtocol? { get set }
     var bekDetails: BEKDetailsProtocol? { get set }
}
