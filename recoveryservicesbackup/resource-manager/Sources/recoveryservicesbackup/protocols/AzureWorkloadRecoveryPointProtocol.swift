// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureWorkloadRecoveryPointProtocol is workload specific recoverypoint, specifcally encaspulates full/diff
// recoverypoint
public protocol AzureWorkloadRecoveryPointProtocol : RecoveryPointProtocol {
     var recoveryPointTimeInUTC: Date? { get set }
     var type: RestorePointTypeEnum? { get set }
}
