// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// GeoBackupPolicyPropertiesProtocol is the properties of the geo backup policy.
public protocol GeoBackupPolicyPropertiesProtocol : Codable {
     var state: GeoBackupPolicyStateEnum { get set }
     var storageType: String? { get set }
}
