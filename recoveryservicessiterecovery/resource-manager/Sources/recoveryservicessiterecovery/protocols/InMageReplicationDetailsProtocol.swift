// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InMageReplicationDetailsProtocol is inMage provider specific settings
public protocol InMageReplicationDetailsProtocol : ReplicationProviderSpecificSettingsProtocol {
     var activeSiteType: String? { get set }
     var sourceVmCPUCount: Int32? { get set }
     var sourceVmRAMSizeInMB: Int32? { get set }
     var osDetails: OSDiskDetailsProtocol? { get set }
     var protectionStage: String? { get set }
     var vmId: String? { get set }
     var vmProtectionState: String? { get set }
     var vmProtectionStateDescription: String? { get set }
     var resyncDetails: InitialReplicationDetailsProtocol? { get set }
     var retentionWindowStart: Date? { get set }
     var retentionWindowEnd: Date? { get set }
     var compressedDataRateInMB: Double? { get set }
     var uncompressedDataRateInMB: Double? { get set }
     var rpoInSeconds: Int64? { get set }
     var protectedDisks: [InMageProtectedDiskDetailsProtocol?]? { get set }
     var ipAddress: String? { get set }
     var lastHeartbeat: Date? { get set }
     var processServerId: String? { get set }
     var masterTargetId: String? { get set }
     var consistencyPoints: [String:Date]? { get set }
     var diskResized: String? { get set }
     var rebootAfterUpdateStatus: String? { get set }
     var multiVmGroupId: String? { get set }
     var multiVmGroupName: String? { get set }
     var multiVmSyncStatus: String? { get set }
     var agentDetails: InMageAgentDetailsProtocol? { get set }
     var vCenterInfrastructureId: String? { get set }
     var infrastructureVmId: String? { get set }
     var vmNics: [VMNicDetailsProtocol?]? { get set }
     var discoveryType: String? { get set }
     var azureStorageAccountId: String? { get set }
     var datastores: [String]? { get set }
     var validationErrors: [HealthErrorProtocol?]? { get set }
     var lastRpoCalculatedTime: Date? { get set }
     var lastUpdateReceivedTime: Date? { get set }
     var replicaId: String? { get set }
     var osVersion: String? { get set }
}