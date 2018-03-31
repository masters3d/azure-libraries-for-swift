// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecoveryPlanInMageAzureV2FailoverInputProtocol is recovery plan InMageAzureV2 failover input.
public protocol RecoveryPlanInMageAzureV2FailoverInputProtocol : RecoveryPlanProviderSpecificFailoverInputProtocol {
     var vaultLocation: String { get set }
     var recoveryPointType: InMageV2RpRecoveryPointTypeEnum { get set }
     var useMultiVmSyncPoint: String? { get set }
}
