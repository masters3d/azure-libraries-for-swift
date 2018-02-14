// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InMagePolicyInputProtocol is vMWare Azure specific protection profile Input.
public protocol InMagePolicyInputProtocol : PolicyProviderSpecificInputProtocol {
     var recoveryPointThresholdInMinutes: Int32? { get set }
     var recoveryPointHistory: Int32? { get set }
     var appConsistentFrequencyInMinutes: Int32? { get set }
     var multiVmSyncStatus: SetMultiVmSyncStatusEnum { get set }
}
