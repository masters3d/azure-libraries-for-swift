// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecoveryPlanHyperVReplicaAzureFailoverInputProtocol is recovery plan HVR Azure failover input.
public protocol RecoveryPlanHyperVReplicaAzureFailoverInputProtocol : RecoveryPlanProviderSpecificFailoverInputProtocol {
     var vaultLocation: String { get set }
     var primaryKekCertificatePfx: String? { get set }
     var secondaryKekCertificatePfx: String? { get set }
     var recoveryPointType: HyperVReplicaAzureRpRecoveryPointTypeEnum? { get set }
}
