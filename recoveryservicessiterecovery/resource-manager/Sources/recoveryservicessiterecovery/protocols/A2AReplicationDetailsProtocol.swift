// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// A2AReplicationDetailsProtocol is a2A provider specific settings.
public protocol A2AReplicationDetailsProtocol : ReplicationProviderSpecificSettingsProtocol {
     var fabricObjectId: String? { get set }
     var multiVmGroupId: String? { get set }
     var multiVmGroupName: String? { get set }
     var managementId: String? { get set }
     var protectedDisks: [A2AProtectedDiskDetailsProtocol?]? { get set }
     var protectedManagedDisks: [A2AProtectedManagedDiskDetailsProtocol?]? { get set }
     var primaryFabricLocation: String? { get set }
     var recoveryFabricLocation: String? { get set }
     var osType: String? { get set }
     var recoveryAzureVMSize: String? { get set }
     var recoveryAzureVMName: String? { get set }
     var recoveryAzureResourceGroupId: String? { get set }
     var recoveryCloudService: String? { get set }
     var recoveryAvailabilitySet: String? { get set }
     var selectedRecoveryAzureNetworkId: String? { get set }
     var vmNics: [VMNicDetailsProtocol?]? { get set }
     var vmSyncedConfigDetails: AzureToAzureVmSyncedConfigDetailsProtocol? { get set }
     var monitoringPercentageCompletion: Int32? { get set }
     var monitoringJobType: String? { get set }
     var lastHeartbeat: Date? { get set }
     var agentVersion: String? { get set }
     var isReplicationAgentUpdateRequired: Bool? { get set }
     var recoveryFabricObjectId: String? { get set }
     var vmProtectionState: String? { get set }
     var vmProtectionStateDescription: String? { get set }
     var lifecycleId: String? { get set }
     var testFailoverRecoveryFabricObjectId: String? { get set }
     var rpoInSeconds: Int64? { get set }
     var lastRpoCalculatedTime: Date? { get set }
}