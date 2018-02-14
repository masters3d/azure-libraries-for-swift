// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PoolPropertiesData : PoolPropertiesProtocol {
    public var displayName: String?
    public var lastModified: Date?
    public var creationTime: Date?
    public var provisioningState: PoolProvisioningStateEnum?
    public var provisioningStateTransitionTime: Date?
    public var allocationState: AllocationStateEnum?
    public var allocationStateTransitionTime: Date?
    public var vmSize: String?
    public var deploymentConfiguration: DeploymentConfigurationProtocol?
    public var currentDedicatedNodes: Int32?
    public var currentLowPriorityNodes: Int32?
    public var scaleSettings: ScaleSettingsProtocol?
    public var autoScaleRun: AutoScaleRunProtocol?
    public var interNodeCommunication: InterNodeCommunicationStateEnum?
    public var networkConfiguration: NetworkConfigurationProtocol?
    public var maxTasksPerNode: Int32?
    public var taskSchedulingPolicy: TaskSchedulingPolicyProtocol?
    public var userAccounts: [UserAccountProtocol?]?
    public var metadata: [MetadataItemProtocol?]?
    public var startTask: StartTaskProtocol?
    public var certificates: [CertificateReferenceProtocol?]?
    public var applicationPackages: [ApplicationPackageReferenceProtocol?]?
    public var applicationLicenses: [String]?
    public var resizeOperationStatus: ResizeOperationStatusProtocol?

        enum CodingKeys: String, CodingKey {case displayName = "displayName"
        case lastModified = "lastModified"
        case creationTime = "creationTime"
        case provisioningState = "provisioningState"
        case provisioningStateTransitionTime = "provisioningStateTransitionTime"
        case allocationState = "allocationState"
        case allocationStateTransitionTime = "allocationStateTransitionTime"
        case vmSize = "vmSize"
        case deploymentConfiguration = "deploymentConfiguration"
        case currentDedicatedNodes = "currentDedicatedNodes"
        case currentLowPriorityNodes = "currentLowPriorityNodes"
        case scaleSettings = "scaleSettings"
        case autoScaleRun = "autoScaleRun"
        case interNodeCommunication = "interNodeCommunication"
        case networkConfiguration = "networkConfiguration"
        case maxTasksPerNode = "maxTasksPerNode"
        case taskSchedulingPolicy = "taskSchedulingPolicy"
        case userAccounts = "userAccounts"
        case metadata = "metadata"
        case startTask = "startTask"
        case certificates = "certificates"
        case applicationPackages = "applicationPackages"
        case applicationLicenses = "applicationLicenses"
        case resizeOperationStatus = "resizeOperationStatus"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.displayName) {
        self.displayName = try container.decode(String?.self, forKey: .displayName)
    }
    if container.contains(.lastModified) {
        self.lastModified = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastModified)), format: .dateTime)
    }
    if container.contains(.creationTime) {
        self.creationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .creationTime)), format: .dateTime)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(PoolProvisioningStateEnum?.self, forKey: .provisioningState)
    }
    if container.contains(.provisioningStateTransitionTime) {
        self.provisioningStateTransitionTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .provisioningStateTransitionTime)), format: .dateTime)
    }
    if container.contains(.allocationState) {
        self.allocationState = try container.decode(AllocationStateEnum?.self, forKey: .allocationState)
    }
    if container.contains(.allocationStateTransitionTime) {
        self.allocationStateTransitionTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .allocationStateTransitionTime)), format: .dateTime)
    }
    if container.contains(.vmSize) {
        self.vmSize = try container.decode(String?.self, forKey: .vmSize)
    }
    if container.contains(.deploymentConfiguration) {
        self.deploymentConfiguration = try container.decode(DeploymentConfigurationData?.self, forKey: .deploymentConfiguration)
    }
    if container.contains(.currentDedicatedNodes) {
        self.currentDedicatedNodes = try container.decode(Int32?.self, forKey: .currentDedicatedNodes)
    }
    if container.contains(.currentLowPriorityNodes) {
        self.currentLowPriorityNodes = try container.decode(Int32?.self, forKey: .currentLowPriorityNodes)
    }
    if container.contains(.scaleSettings) {
        self.scaleSettings = try container.decode(ScaleSettingsData?.self, forKey: .scaleSettings)
    }
    if container.contains(.autoScaleRun) {
        self.autoScaleRun = try container.decode(AutoScaleRunData?.self, forKey: .autoScaleRun)
    }
    if container.contains(.interNodeCommunication) {
        self.interNodeCommunication = try container.decode(InterNodeCommunicationStateEnum?.self, forKey: .interNodeCommunication)
    }
    if container.contains(.networkConfiguration) {
        self.networkConfiguration = try container.decode(NetworkConfigurationData?.self, forKey: .networkConfiguration)
    }
    if container.contains(.maxTasksPerNode) {
        self.maxTasksPerNode = try container.decode(Int32?.self, forKey: .maxTasksPerNode)
    }
    if container.contains(.taskSchedulingPolicy) {
        self.taskSchedulingPolicy = try container.decode(TaskSchedulingPolicyData?.self, forKey: .taskSchedulingPolicy)
    }
    if container.contains(.userAccounts) {
        self.userAccounts = try container.decode([UserAccountData?]?.self, forKey: .userAccounts)
    }
    if container.contains(.metadata) {
        self.metadata = try container.decode([MetadataItemData?]?.self, forKey: .metadata)
    }
    if container.contains(.startTask) {
        self.startTask = try container.decode(StartTaskData?.self, forKey: .startTask)
    }
    if container.contains(.certificates) {
        self.certificates = try container.decode([CertificateReferenceData?]?.self, forKey: .certificates)
    }
    if container.contains(.applicationPackages) {
        self.applicationPackages = try container.decode([ApplicationPackageReferenceData?]?.self, forKey: .applicationPackages)
    }
    if container.contains(.applicationLicenses) {
        self.applicationLicenses = try container.decode([String]?.self, forKey: .applicationLicenses)
    }
    if container.contains(.resizeOperationStatus) {
        self.resizeOperationStatus = try container.decode(ResizeOperationStatusData?.self, forKey: .resizeOperationStatus)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    if self.lastModified != nil {
        try container.encode(DateConverter.toString(date: self.lastModified!, format: .dateTime), forKey: .lastModified)
    }
    if self.creationTime != nil {
        try container.encode(DateConverter.toString(date: self.creationTime!, format: .dateTime), forKey: .creationTime)
    }
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.provisioningStateTransitionTime != nil {
        try container.encode(DateConverter.toString(date: self.provisioningStateTransitionTime!, format: .dateTime), forKey: .provisioningStateTransitionTime)
    }
    if self.allocationState != nil {try container.encode(self.allocationState, forKey: .allocationState)}
    if self.allocationStateTransitionTime != nil {
        try container.encode(DateConverter.toString(date: self.allocationStateTransitionTime!, format: .dateTime), forKey: .allocationStateTransitionTime)
    }
    if self.vmSize != nil {try container.encode(self.vmSize, forKey: .vmSize)}
    if self.deploymentConfiguration != nil {try container.encode(self.deploymentConfiguration as! DeploymentConfigurationData?, forKey: .deploymentConfiguration)}
    if self.currentDedicatedNodes != nil {try container.encode(self.currentDedicatedNodes, forKey: .currentDedicatedNodes)}
    if self.currentLowPriorityNodes != nil {try container.encode(self.currentLowPriorityNodes, forKey: .currentLowPriorityNodes)}
    if self.scaleSettings != nil {try container.encode(self.scaleSettings as! ScaleSettingsData?, forKey: .scaleSettings)}
    if self.autoScaleRun != nil {try container.encode(self.autoScaleRun as! AutoScaleRunData?, forKey: .autoScaleRun)}
    if self.interNodeCommunication != nil {try container.encode(self.interNodeCommunication, forKey: .interNodeCommunication)}
    if self.networkConfiguration != nil {try container.encode(self.networkConfiguration as! NetworkConfigurationData?, forKey: .networkConfiguration)}
    if self.maxTasksPerNode != nil {try container.encode(self.maxTasksPerNode, forKey: .maxTasksPerNode)}
    if self.taskSchedulingPolicy != nil {try container.encode(self.taskSchedulingPolicy as! TaskSchedulingPolicyData?, forKey: .taskSchedulingPolicy)}
    if self.userAccounts != nil {try container.encode(self.userAccounts as! [UserAccountData?]?, forKey: .userAccounts)}
    if self.metadata != nil {try container.encode(self.metadata as! [MetadataItemData?]?, forKey: .metadata)}
    if self.startTask != nil {try container.encode(self.startTask as! StartTaskData?, forKey: .startTask)}
    if self.certificates != nil {try container.encode(self.certificates as! [CertificateReferenceData?]?, forKey: .certificates)}
    if self.applicationPackages != nil {try container.encode(self.applicationPackages as! [ApplicationPackageReferenceData?]?, forKey: .applicationPackages)}
    if self.applicationLicenses != nil {try container.encode(self.applicationLicenses as! [String]?, forKey: .applicationLicenses)}
    if self.resizeOperationStatus != nil {try container.encode(self.resizeOperationStatus as! ResizeOperationStatusData?, forKey: .resizeOperationStatus)}
  }
}

extension DataFactory {
  public static func createPoolPropertiesProtocol() -> PoolPropertiesProtocol {
    return PoolPropertiesData()
  }
}
