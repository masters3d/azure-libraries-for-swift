// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// A2AReprotectInputProtocol is azure specific reprotect input.
public protocol A2AReprotectInputProtocol : ReverseReplicationProviderSpecificInputProtocol {
     var recoveryContainerId: String? { get set }
     var vmDisks: [A2AVmDiskInputDetailsProtocol?]? { get set }
     var recoveryResourceGroupId: String? { get set }
     var recoveryCloudServiceId: String? { get set }
     var recoveryAvailabilitySetId: String? { get set }
     var policyId: String? { get set }
}
