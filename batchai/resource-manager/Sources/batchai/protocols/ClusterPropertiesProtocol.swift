// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ClusterPropertiesProtocol is job specific properties.
public protocol ClusterPropertiesProtocol : Codable {
     var vmSize: String? { get set }
     var vmPriority: VmPriorityEnum? { get set }
     var scaleSettings: ScaleSettingsProtocol? { get set }
     var virtualMachineConfiguration: VirtualMachineConfigurationProtocol? { get set }
     var nodeSetup: NodeSetupProtocol? { get set }
     var userAccountSettings: UserAccountSettingsProtocol? { get set }
     var subnet: ResourceIdProtocol? { get set }
     var creationTime: Date? { get set }
     var provisioningState: ProvisioningStateEnum? { get set }
     var provisioningStateTransitionTime: Date? { get set }
     var allocationState: AllocationStateEnum? { get set }
     var allocationStateTransitionTime: Date? { get set }
     var errors: [BatchAIErrorProtocol?]? { get set }
     var currentNodeCount: Int32? { get set }
     var nodeStateCounts: NodeStateCountsProtocol? { get set }
}
