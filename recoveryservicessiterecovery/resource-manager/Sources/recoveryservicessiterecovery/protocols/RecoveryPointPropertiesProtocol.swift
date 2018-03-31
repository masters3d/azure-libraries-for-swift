// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecoveryPointPropertiesProtocol is recovery point properties.
public protocol RecoveryPointPropertiesProtocol : Codable {
     var recoveryPointTime: Date? { get set }
     var recoveryPointType: String? { get set }
     var providerSpecificDetails: ProviderSpecificRecoveryPointDetailsProtocol? { get set }
}
