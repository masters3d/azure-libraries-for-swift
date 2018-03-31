// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// HyperVReplicaAzurePolicyInputProtocol is hyper-V Replica Azure specific input for creating a protection profile.
public protocol HyperVReplicaAzurePolicyInputProtocol : PolicyProviderSpecificInputProtocol {
     var recoveryPointHistoryDuration: Int32? { get set }
     var applicationConsistentSnapshotFrequencyInHours: Int32? { get set }
     var replicationInterval: Int32? { get set }
     var onlineReplicationStartTime: String? { get set }
     var storageAccounts: [String]? { get set }
}
