// ReplicationProtectedItemOperation enumerates the values for replication protected item operation.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum ReplicationProtectedItemOperationEnum: String, Codable
{
// ReplicationProtectedItemOperationChangePit specifies the replication protected item operation change pit state for
// replication protected item operation.
    case ReplicationProtectedItemOperationChangePit = "ChangePit"
// ReplicationProtectedItemOperationCommit specifies the replication protected item operation commit state for
// replication protected item operation.
    case ReplicationProtectedItemOperationCommit = "Commit"
// ReplicationProtectedItemOperationCompleteMigration specifies the replication protected item operation complete
// migration state for replication protected item operation.
    case ReplicationProtectedItemOperationCompleteMigration = "CompleteMigration"
// ReplicationProtectedItemOperationDisableProtection specifies the replication protected item operation disable
// protection state for replication protected item operation.
    case ReplicationProtectedItemOperationDisableProtection = "DisableProtection"
// ReplicationProtectedItemOperationFailback specifies the replication protected item operation failback state for
// replication protected item operation.
    case ReplicationProtectedItemOperationFailback = "Failback"
// ReplicationProtectedItemOperationFinalizeFailback specifies the replication protected item operation finalize
// failback state for replication protected item operation.
    case ReplicationProtectedItemOperationFinalizeFailback = "FinalizeFailback"
// ReplicationProtectedItemOperationPlannedFailover specifies the replication protected item operation planned failover
// state for replication protected item operation.
    case ReplicationProtectedItemOperationPlannedFailover = "PlannedFailover"
// ReplicationProtectedItemOperationRepairReplication specifies the replication protected item operation repair
// replication state for replication protected item operation.
    case ReplicationProtectedItemOperationRepairReplication = "RepairReplication"
// ReplicationProtectedItemOperationReverseReplicate specifies the replication protected item operation reverse
// replicate state for replication protected item operation.
    case ReplicationProtectedItemOperationReverseReplicate = "ReverseReplicate"
// ReplicationProtectedItemOperationSwitchProtection specifies the replication protected item operation switch
// protection state for replication protected item operation.
    case ReplicationProtectedItemOperationSwitchProtection = "SwitchProtection"
// ReplicationProtectedItemOperationTestFailover specifies the replication protected item operation test failover state
// for replication protected item operation.
    case ReplicationProtectedItemOperationTestFailover = "TestFailover"
// ReplicationProtectedItemOperationTestFailoverCleanup specifies the replication protected item operation test
// failover cleanup state for replication protected item operation.
    case ReplicationProtectedItemOperationTestFailoverCleanup = "TestFailoverCleanup"
// ReplicationProtectedItemOperationUnplannedFailover specifies the replication protected item operation unplanned
// failover state for replication protected item operation.
    case ReplicationProtectedItemOperationUnplannedFailover = "UnplannedFailover"
}
