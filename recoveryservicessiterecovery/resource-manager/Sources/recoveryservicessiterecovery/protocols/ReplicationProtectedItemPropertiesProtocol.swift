// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ReplicationProtectedItemPropertiesProtocol is replication protected item custom data details.
public protocol ReplicationProtectedItemPropertiesProtocol : Codable {
     var friendlyName: String? { get set }
     var protectedItemType: String? { get set }
     var protectableItemId: String? { get set }
     var recoveryServicesProviderId: String? { get set }
     var primaryFabricFriendlyName: String? { get set }
     var primaryFabricProvider: String? { get set }
     var recoveryFabricFriendlyName: String? { get set }
     var recoveryFabricId: String? { get set }
     var primaryProtectionContainerFriendlyName: String? { get set }
     var recoveryProtectionContainerFriendlyName: String? { get set }
     var protectionState: String? { get set }
     var protectionStateDescription: String? { get set }
     var activeLocation: String? { get set }
     var testFailoverState: String? { get set }
     var testFailoverStateDescription: String? { get set }
     var allowedOperations: [String]? { get set }
     var replicationHealth: String? { get set }
     var failoverHealth: String? { get set }
     var healthErrors: [HealthErrorProtocol?]? { get set }
     var policyId: String? { get set }
     var policyFriendlyName: String? { get set }
     var lastSuccessfulFailoverTime: Date? { get set }
     var lastSuccessfulTestFailoverTime: Date? { get set }
     var currentScenario: CurrentScenarioDetailsProtocol? { get set }
     var failoverRecoveryPointId: String? { get set }
     var providerSpecificDetails: ReplicationProviderSpecificSettingsProtocol? { get set }
     var recoveryContainerId: String? { get set }
}
