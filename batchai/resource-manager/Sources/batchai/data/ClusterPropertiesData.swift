// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ClusterPropertiesData : ClusterPropertiesProtocol {
    public var vmSize: String?
    public var vmPriority: VmPriorityEnum?
    public var scaleSettings: ScaleSettingsProtocol?
    public var virtualMachineConfiguration: VirtualMachineConfigurationProtocol?
    public var nodeSetup: NodeSetupProtocol?
    public var userAccountSettings: UserAccountSettingsProtocol?
    public var subnet: ResourceIdProtocol?
    public var creationTime: Date?
    public var provisioningState: ProvisioningStateEnum?
    public var provisioningStateTransitionTime: Date?
    public var allocationState: AllocationStateEnum?
    public var allocationStateTransitionTime: Date?
    public var errors: [BatchAIErrorProtocol?]?
    public var currentNodeCount: Int32?
    public var nodeStateCounts: NodeStateCountsProtocol?

        enum CodingKeys: String, CodingKey {case vmSize = "vmSize"
        case vmPriority = "vmPriority"
        case scaleSettings = "scaleSettings"
        case virtualMachineConfiguration = "virtualMachineConfiguration"
        case nodeSetup = "nodeSetup"
        case userAccountSettings = "userAccountSettings"
        case subnet = "subnet"
        case creationTime = "creationTime"
        case provisioningState = "provisioningState"
        case provisioningStateTransitionTime = "provisioningStateTransitionTime"
        case allocationState = "allocationState"
        case allocationStateTransitionTime = "allocationStateTransitionTime"
        case errors = "errors"
        case currentNodeCount = "currentNodeCount"
        case nodeStateCounts = "nodeStateCounts"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.vmSize) {
        self.vmSize = try container.decode(String?.self, forKey: .vmSize)
    }
    if container.contains(.vmPriority) {
        self.vmPriority = try container.decode(VmPriorityEnum?.self, forKey: .vmPriority)
    }
    if container.contains(.scaleSettings) {
        self.scaleSettings = try container.decode(ScaleSettingsData?.self, forKey: .scaleSettings)
    }
    if container.contains(.virtualMachineConfiguration) {
        self.virtualMachineConfiguration = try container.decode(VirtualMachineConfigurationData?.self, forKey: .virtualMachineConfiguration)
    }
    if container.contains(.nodeSetup) {
        self.nodeSetup = try container.decode(NodeSetupData?.self, forKey: .nodeSetup)
    }
    if container.contains(.userAccountSettings) {
        self.userAccountSettings = try container.decode(UserAccountSettingsData?.self, forKey: .userAccountSettings)
    }
    if container.contains(.subnet) {
        self.subnet = try container.decode(ResourceIdData?.self, forKey: .subnet)
    }
    if container.contains(.creationTime) {
        self.creationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .creationTime)), format: .dateTime)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(ProvisioningStateEnum?.self, forKey: .provisioningState)
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
    if container.contains(.errors) {
        self.errors = try container.decode([BatchAIErrorData?]?.self, forKey: .errors)
    }
    if container.contains(.currentNodeCount) {
        self.currentNodeCount = try container.decode(Int32?.self, forKey: .currentNodeCount)
    }
    if container.contains(.nodeStateCounts) {
        self.nodeStateCounts = try container.decode(NodeStateCountsData?.self, forKey: .nodeStateCounts)
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
    if self.vmSize != nil {try container.encode(self.vmSize, forKey: .vmSize)}
    if self.vmPriority != nil {try container.encode(self.vmPriority, forKey: .vmPriority)}
    if self.scaleSettings != nil {try container.encode(self.scaleSettings as! ScaleSettingsData?, forKey: .scaleSettings)}
    if self.virtualMachineConfiguration != nil {try container.encode(self.virtualMachineConfiguration as! VirtualMachineConfigurationData?, forKey: .virtualMachineConfiguration)}
    if self.nodeSetup != nil {try container.encode(self.nodeSetup as! NodeSetupData?, forKey: .nodeSetup)}
    if self.userAccountSettings != nil {try container.encode(self.userAccountSettings as! UserAccountSettingsData?, forKey: .userAccountSettings)}
    if self.subnet != nil {try container.encode(self.subnet as! ResourceIdData?, forKey: .subnet)}
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
    if self.errors != nil {try container.encode(self.errors as! [BatchAIErrorData?]?, forKey: .errors)}
    if self.currentNodeCount != nil {try container.encode(self.currentNodeCount, forKey: .currentNodeCount)}
    if self.nodeStateCounts != nil {try container.encode(self.nodeStateCounts as! NodeStateCountsData?, forKey: .nodeStateCounts)}
  }
}

extension DataFactory {
  public static func createClusterPropertiesProtocol() -> ClusterPropertiesProtocol {
    return ClusterPropertiesData()
  }
}
