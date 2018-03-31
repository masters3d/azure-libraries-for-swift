// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ClusterBasePropertiesData : ClusterBasePropertiesProtocol {
    public var vmSize: String
    public var vmPriority: VmPriorityEnum?
    public var scaleSettings: ScaleSettingsProtocol?
    public var virtualMachineConfiguration: VirtualMachineConfigurationProtocol?
    public var nodeSetup: NodeSetupProtocol?
    public var userAccountSettings: UserAccountSettingsProtocol
    public var subnet: ResourceIdProtocol?

        enum CodingKeys: String, CodingKey {case vmSize = "vmSize"
        case vmPriority = "vmPriority"
        case scaleSettings = "scaleSettings"
        case virtualMachineConfiguration = "virtualMachineConfiguration"
        case nodeSetup = "nodeSetup"
        case userAccountSettings = "userAccountSettings"
        case subnet = "subnet"
        }

  public init(vmSize: String, userAccountSettings: UserAccountSettingsProtocol) {
    self.vmSize = vmSize
    self.userAccountSettings = userAccountSettings
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.vmSize = try container.decode(String.self, forKey: .vmSize)
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
    self.userAccountSettings = try container.decode(UserAccountSettingsData.self, forKey: .userAccountSettings)
    if container.contains(.subnet) {
        self.subnet = try container.decode(ResourceIdData?.self, forKey: .subnet)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.vmSize, forKey: .vmSize)
    if self.vmPriority != nil { try container.encode(self.vmPriority, forKey: .vmPriority) }
    if self.scaleSettings != nil { try container.encode(self.scaleSettings as! ScaleSettingsData?, forKey: .scaleSettings) }
    if self.virtualMachineConfiguration != nil { try container.encode(self.virtualMachineConfiguration as! VirtualMachineConfigurationData?, forKey: .virtualMachineConfiguration) }
    if self.nodeSetup != nil { try container.encode(self.nodeSetup as! NodeSetupData?, forKey: .nodeSetup) }
    try container.encode(self.userAccountSettings as! UserAccountSettingsData, forKey: .userAccountSettings)
    if self.subnet != nil { try container.encode(self.subnet as! ResourceIdData?, forKey: .subnet) }
  }
}

extension DataFactory {
  public static func createClusterBasePropertiesProtocol(vmSize: String, userAccountSettings: UserAccountSettingsProtocol) -> ClusterBasePropertiesProtocol {
    return ClusterBasePropertiesData(vmSize: vmSize, userAccountSettings: userAccountSettings)
  }
}
