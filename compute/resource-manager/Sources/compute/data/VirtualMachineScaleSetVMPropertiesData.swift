// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetVMPropertiesData : VirtualMachineScaleSetVMPropertiesProtocol {
    public var latestModelApplied: Bool?
    public var vmId: String?
    public var instanceView: VirtualMachineInstanceViewProtocol?
    public var hardwareProfile: HardwareProfileProtocol?
    public var storageProfile: StorageProfileProtocol?
    public var osProfile: OSProfileProtocol?
    public var networkProfile: NetworkProfileProtocol?
    public var diagnosticsProfile: DiagnosticsProfileProtocol?
    public var availabilitySet: SubResourceProtocol?
    public var provisioningState: String?
    public var licenseType: String?

        enum CodingKeys: String, CodingKey {case latestModelApplied = "latestModelApplied"
        case vmId = "vmId"
        case instanceView = "instanceView"
        case hardwareProfile = "hardwareProfile"
        case storageProfile = "storageProfile"
        case osProfile = "osProfile"
        case networkProfile = "networkProfile"
        case diagnosticsProfile = "diagnosticsProfile"
        case availabilitySet = "availabilitySet"
        case provisioningState = "provisioningState"
        case licenseType = "licenseType"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.latestModelApplied) {
        self.latestModelApplied = try container.decode(Bool?.self, forKey: .latestModelApplied)
    }
    if container.contains(.vmId) {
        self.vmId = try container.decode(String?.self, forKey: .vmId)
    }
    if container.contains(.instanceView) {
        self.instanceView = try container.decode(VirtualMachineInstanceViewData?.self, forKey: .instanceView)
    }
    if container.contains(.hardwareProfile) {
        self.hardwareProfile = try container.decode(HardwareProfileData?.self, forKey: .hardwareProfile)
    }
    if container.contains(.storageProfile) {
        self.storageProfile = try container.decode(StorageProfileData?.self, forKey: .storageProfile)
    }
    if container.contains(.osProfile) {
        self.osProfile = try container.decode(OSProfileData?.self, forKey: .osProfile)
    }
    if container.contains(.networkProfile) {
        self.networkProfile = try container.decode(NetworkProfileData?.self, forKey: .networkProfile)
    }
    if container.contains(.diagnosticsProfile) {
        self.diagnosticsProfile = try container.decode(DiagnosticsProfileData?.self, forKey: .diagnosticsProfile)
    }
    if container.contains(.availabilitySet) {
        self.availabilitySet = try container.decode(SubResourceData?.self, forKey: .availabilitySet)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.licenseType) {
        self.licenseType = try container.decode(String?.self, forKey: .licenseType)
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
    if self.latestModelApplied != nil { try container.encode(self.latestModelApplied, forKey: .latestModelApplied) }
    if self.vmId != nil { try container.encode(self.vmId, forKey: .vmId) }
    if self.instanceView != nil { try container.encode(self.instanceView as! VirtualMachineInstanceViewData?, forKey: .instanceView) }
    if self.hardwareProfile != nil { try container.encode(self.hardwareProfile as! HardwareProfileData?, forKey: .hardwareProfile) }
    if self.storageProfile != nil { try container.encode(self.storageProfile as! StorageProfileData?, forKey: .storageProfile) }
    if self.osProfile != nil { try container.encode(self.osProfile as! OSProfileData?, forKey: .osProfile) }
    if self.networkProfile != nil { try container.encode(self.networkProfile as! NetworkProfileData?, forKey: .networkProfile) }
    if self.diagnosticsProfile != nil { try container.encode(self.diagnosticsProfile as! DiagnosticsProfileData?, forKey: .diagnosticsProfile) }
    if self.availabilitySet != nil { try container.encode(self.availabilitySet as! SubResourceData?, forKey: .availabilitySet) }
    if self.provisioningState != nil { try container.encode(self.provisioningState, forKey: .provisioningState) }
    if self.licenseType != nil { try container.encode(self.licenseType, forKey: .licenseType) }
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetVMPropertiesProtocol() -> VirtualMachineScaleSetVMPropertiesProtocol {
    return VirtualMachineScaleSetVMPropertiesData()
  }
}
