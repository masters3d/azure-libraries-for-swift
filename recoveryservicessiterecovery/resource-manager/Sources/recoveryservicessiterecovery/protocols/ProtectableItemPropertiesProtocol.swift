// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ProtectableItemPropertiesProtocol is replication protected item custom data details.
public protocol ProtectableItemPropertiesProtocol : Codable {
     var friendlyName: String? { get set }
     var protectionStatus: String? { get set }
     var replicationProtectedItemId: String? { get set }
     var recoveryServicesProviderId: String? { get set }
     var protectionReadinessErrors: [String]? { get set }
     var supportedReplicationProviders: [String]? { get set }
     var customDetails: ConfigurationSettingsProtocol? { get set }
}
