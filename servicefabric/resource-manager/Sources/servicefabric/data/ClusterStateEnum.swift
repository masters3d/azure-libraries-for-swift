// ClusterState enumerates the values for cluster state.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum ClusterStateEnum: String, Codable {
// AutoScale specifies the auto scale state for cluster state.
    case AutoScale = "AutoScale"
// BaselineUpgrade specifies the baseline upgrade state for cluster state.
    case BaselineUpgrade = "BaselineUpgrade"
// Deploying specifies the deploying state for cluster state.
    case Deploying = "Deploying"
// EnforcingClusterVersion specifies the enforcing cluster version state for cluster state.
    case EnforcingClusterVersion = "EnforcingClusterVersion"
// Ready specifies the ready state for cluster state.
    case Ready = "Ready"
// UpdatingInfrastructure specifies the updating infrastructure state for cluster state.
    case UpdatingInfrastructure = "UpdatingInfrastructure"
// UpdatingUserCertificate specifies the updating user certificate state for cluster state.
    case UpdatingUserCertificate = "UpdatingUserCertificate"
// UpdatingUserConfiguration specifies the updating user configuration state for cluster state.
    case UpdatingUserConfiguration = "UpdatingUserConfiguration"
// UpgradeServiceUnreachable specifies the upgrade service unreachable state for cluster state.
    case UpgradeServiceUnreachable = "UpgradeServiceUnreachable"
// WaitingForNodes specifies the waiting for nodes state for cluster state.
    case WaitingForNodes = "WaitingForNodes"
}
