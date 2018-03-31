// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PoolPropertiesProtocol is pool properties.
public protocol PoolPropertiesProtocol : Codable {
     var displayName: String? { get set }
     var lastModified: Date? { get set }
     var creationTime: Date? { get set }
     var provisioningState: PoolProvisioningStateEnum? { get set }
     var provisioningStateTransitionTime: Date? { get set }
     var allocationState: AllocationStateEnum? { get set }
     var allocationStateTransitionTime: Date? { get set }
     var vmSize: String? { get set }
     var deploymentConfiguration: DeploymentConfigurationProtocol? { get set }
     var currentDedicatedNodes: Int32? { get set }
     var currentLowPriorityNodes: Int32? { get set }
     var scaleSettings: ScaleSettingsProtocol? { get set }
     var autoScaleRun: AutoScaleRunProtocol? { get set }
     var interNodeCommunication: InterNodeCommunicationStateEnum? { get set }
     var networkConfiguration: NetworkConfigurationProtocol? { get set }
     var maxTasksPerNode: Int32? { get set }
     var taskSchedulingPolicy: TaskSchedulingPolicyProtocol? { get set }
     var userAccounts: [UserAccountProtocol?]? { get set }
     var metadata: [MetadataItemProtocol?]? { get set }
     var startTask: StartTaskProtocol? { get set }
     var certificates: [CertificateReferenceProtocol?]? { get set }
     var applicationPackages: [ApplicationPackageReferenceProtocol?]? { get set }
     var applicationLicenses: [String]? { get set }
     var resizeOperationStatus: ResizeOperationStatusProtocol? { get set }
}
