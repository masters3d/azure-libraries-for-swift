// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InMageAzureV2EnableProtectionInputData : InMageAzureV2EnableProtectionInputProtocol, EnableProtectionProviderSpecificInputProtocol {
    public var masterTargetId: String?
    public var processServerId: String?
    public var storageAccountId: String
    public var runAsAccountId: String?
    public var multiVmGroupId: String?
    public var multiVmGroupName: String?
    public var disksToInclude: [String]?
    public var targetAzureNetworkId: String?
    public var targetAzureSubnetId: String?
    public var enableRDPOnTargetOption: String?
    public var targetAzureVmName: String?
    public var logStorageAccountId: String?
    public var targetAzureV1ResourceGroupId: String?
    public var targetAzureV2ResourceGroupId: String?
    public var useManagedDisks: String?

        enum CodingKeys: String, CodingKey {case masterTargetId = "masterTargetId"
        case processServerId = "processServerId"
        case storageAccountId = "storageAccountId"
        case runAsAccountId = "runAsAccountId"
        case multiVmGroupId = "multiVmGroupId"
        case multiVmGroupName = "multiVmGroupName"
        case disksToInclude = "disksToInclude"
        case targetAzureNetworkId = "targetAzureNetworkId"
        case targetAzureSubnetId = "targetAzureSubnetId"
        case enableRDPOnTargetOption = "enableRDPOnTargetOption"
        case targetAzureVmName = "targetAzureVmName"
        case logStorageAccountId = "logStorageAccountId"
        case targetAzureV1ResourceGroupId = "targetAzureV1ResourceGroupId"
        case targetAzureV2ResourceGroupId = "targetAzureV2ResourceGroupId"
        case useManagedDisks = "useManagedDisks"
        }

  public init(storageAccountId: String)  {
    self.storageAccountId = storageAccountId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.masterTargetId) {
        self.masterTargetId = try container.decode(String?.self, forKey: .masterTargetId)
    }
    if container.contains(.processServerId) {
        self.processServerId = try container.decode(String?.self, forKey: .processServerId)
    }
    self.storageAccountId = try container.decode(String.self, forKey: .storageAccountId)
    if container.contains(.runAsAccountId) {
        self.runAsAccountId = try container.decode(String?.self, forKey: .runAsAccountId)
    }
    if container.contains(.multiVmGroupId) {
        self.multiVmGroupId = try container.decode(String?.self, forKey: .multiVmGroupId)
    }
    if container.contains(.multiVmGroupName) {
        self.multiVmGroupName = try container.decode(String?.self, forKey: .multiVmGroupName)
    }
    if container.contains(.disksToInclude) {
        self.disksToInclude = try container.decode([String]?.self, forKey: .disksToInclude)
    }
    if container.contains(.targetAzureNetworkId) {
        self.targetAzureNetworkId = try container.decode(String?.self, forKey: .targetAzureNetworkId)
    }
    if container.contains(.targetAzureSubnetId) {
        self.targetAzureSubnetId = try container.decode(String?.self, forKey: .targetAzureSubnetId)
    }
    if container.contains(.enableRDPOnTargetOption) {
        self.enableRDPOnTargetOption = try container.decode(String?.self, forKey: .enableRDPOnTargetOption)
    }
    if container.contains(.targetAzureVmName) {
        self.targetAzureVmName = try container.decode(String?.self, forKey: .targetAzureVmName)
    }
    if container.contains(.logStorageAccountId) {
        self.logStorageAccountId = try container.decode(String?.self, forKey: .logStorageAccountId)
    }
    if container.contains(.targetAzureV1ResourceGroupId) {
        self.targetAzureV1ResourceGroupId = try container.decode(String?.self, forKey: .targetAzureV1ResourceGroupId)
    }
    if container.contains(.targetAzureV2ResourceGroupId) {
        self.targetAzureV2ResourceGroupId = try container.decode(String?.self, forKey: .targetAzureV2ResourceGroupId)
    }
    if container.contains(.useManagedDisks) {
        self.useManagedDisks = try container.decode(String?.self, forKey: .useManagedDisks)
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
    if self.masterTargetId != nil {try container.encode(self.masterTargetId, forKey: .masterTargetId)}
    if self.processServerId != nil {try container.encode(self.processServerId, forKey: .processServerId)}
    try container.encode(self.storageAccountId, forKey: .storageAccountId)
    if self.runAsAccountId != nil {try container.encode(self.runAsAccountId, forKey: .runAsAccountId)}
    if self.multiVmGroupId != nil {try container.encode(self.multiVmGroupId, forKey: .multiVmGroupId)}
    if self.multiVmGroupName != nil {try container.encode(self.multiVmGroupName, forKey: .multiVmGroupName)}
    if self.disksToInclude != nil {try container.encode(self.disksToInclude as! [String]?, forKey: .disksToInclude)}
    if self.targetAzureNetworkId != nil {try container.encode(self.targetAzureNetworkId, forKey: .targetAzureNetworkId)}
    if self.targetAzureSubnetId != nil {try container.encode(self.targetAzureSubnetId, forKey: .targetAzureSubnetId)}
    if self.enableRDPOnTargetOption != nil {try container.encode(self.enableRDPOnTargetOption, forKey: .enableRDPOnTargetOption)}
    if self.targetAzureVmName != nil {try container.encode(self.targetAzureVmName, forKey: .targetAzureVmName)}
    if self.logStorageAccountId != nil {try container.encode(self.logStorageAccountId, forKey: .logStorageAccountId)}
    if self.targetAzureV1ResourceGroupId != nil {try container.encode(self.targetAzureV1ResourceGroupId, forKey: .targetAzureV1ResourceGroupId)}
    if self.targetAzureV2ResourceGroupId != nil {try container.encode(self.targetAzureV2ResourceGroupId, forKey: .targetAzureV2ResourceGroupId)}
    if self.useManagedDisks != nil {try container.encode(self.useManagedDisks, forKey: .useManagedDisks)}
  }
}

extension DataFactory {
  public static func createInMageAzureV2EnableProtectionInputProtocol(storageAccountId: String) -> InMageAzureV2EnableProtectionInputProtocol {
    return InMageAzureV2EnableProtectionInputData(storageAccountId: storageAccountId)
  }
}
