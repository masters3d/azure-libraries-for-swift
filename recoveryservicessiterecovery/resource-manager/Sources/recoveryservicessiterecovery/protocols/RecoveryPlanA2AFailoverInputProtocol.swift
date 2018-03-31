// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecoveryPlanA2AFailoverInputProtocol is recovery plan A2A failover input.
public protocol RecoveryPlanA2AFailoverInputProtocol : RecoveryPlanProviderSpecificFailoverInputProtocol {
     var recoveryPointType: A2ARpRecoveryPointTypeEnum { get set }
     var cloudServiceCreationOption: String? { get set }
     var multiVmSyncPointOption: MultiVmSyncPointOptionEnum? { get set }
}
