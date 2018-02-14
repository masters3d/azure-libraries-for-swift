// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VaultPropertiesProtocol is properties of the vault.
public protocol VaultPropertiesProtocol : Codable {
     var provisioningState: String? { get set }
     var upgradeDetails: UpgradeDetailsProtocol? { get set }
}
