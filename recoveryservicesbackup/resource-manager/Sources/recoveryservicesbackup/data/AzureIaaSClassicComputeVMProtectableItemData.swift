// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureIaaSClassicComputeVMProtectableItemData : AzureIaaSClassicComputeVMProtectableItemProtocol, IaaSVMProtectableItemProtocol, WorkloadProtectableItemProtocol {
    public var backupManagementType: String?
    public var workloadType: String?
    public var friendlyName: String?
    public var protectionState: ProtectionStatusEnum?
    public var virtualMachineId: String?

        enum CodingKeys: String, CodingKey {case backupManagementType = "backupManagementType"
        case workloadType = "workloadType"
        case friendlyName = "friendlyName"
        case protectionState = "protectionState"
        case virtualMachineId = "virtualMachineId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.backupManagementType) {
        self.backupManagementType = try container.decode(String?.self, forKey: .backupManagementType)
    }
    if container.contains(.workloadType) {
        self.workloadType = try container.decode(String?.self, forKey: .workloadType)
    }
    if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.protectionState) {
        self.protectionState = try container.decode(ProtectionStatusEnum?.self, forKey: .protectionState)
    }
    if container.contains(.virtualMachineId) {
        self.virtualMachineId = try container.decode(String?.self, forKey: .virtualMachineId)
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
    if self.backupManagementType != nil {try container.encode(self.backupManagementType, forKey: .backupManagementType)}
    if self.workloadType != nil {try container.encode(self.workloadType, forKey: .workloadType)}
    if self.friendlyName != nil {try container.encode(self.friendlyName, forKey: .friendlyName)}
    if self.protectionState != nil {try container.encode(self.protectionState, forKey: .protectionState)}
    if self.virtualMachineId != nil {try container.encode(self.virtualMachineId, forKey: .virtualMachineId)}
  }
}

extension DataFactory {
  public static func createAzureIaaSClassicComputeVMProtectableItemProtocol() -> AzureIaaSClassicComputeVMProtectableItemProtocol {
    return AzureIaaSClassicComputeVMProtectableItemData()
  }
}
