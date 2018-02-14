// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IaasVMRestoreRequestData : IaasVMRestoreRequestProtocol, RestoreRequestProtocol {
    public var recoveryPointId: String?
    public var recoveryType: RecoveryTypeEnum?
    public var sourceResourceId: String?
    public var targetVirtualMachineId: String?
    public var targetResourceGroupId: String?
    public var storageAccountId: String?
    public var virtualNetworkId: String?
    public var subnetId: String?
    public var targetDomainNameId: String?
    public var region: String?
    public var affinityGroup: String?
    public var createNewCloudService: Bool?
    public var originalStorageAccountOption: Bool?
    public var encryptionDetails: EncryptionDetailsProtocol?

        enum CodingKeys: String, CodingKey {case recoveryPointId = "recoveryPointId"
        case recoveryType = "recoveryType"
        case sourceResourceId = "sourceResourceId"
        case targetVirtualMachineId = "targetVirtualMachineId"
        case targetResourceGroupId = "targetResourceGroupId"
        case storageAccountId = "storageAccountId"
        case virtualNetworkId = "virtualNetworkId"
        case subnetId = "subnetId"
        case targetDomainNameId = "targetDomainNameId"
        case region = "region"
        case affinityGroup = "affinityGroup"
        case createNewCloudService = "createNewCloudService"
        case originalStorageAccountOption = "originalStorageAccountOption"
        case encryptionDetails = "encryptionDetails"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.recoveryPointId) {
        self.recoveryPointId = try container.decode(String?.self, forKey: .recoveryPointId)
    }
    if container.contains(.recoveryType) {
        self.recoveryType = try container.decode(RecoveryTypeEnum?.self, forKey: .recoveryType)
    }
    if container.contains(.sourceResourceId) {
        self.sourceResourceId = try container.decode(String?.self, forKey: .sourceResourceId)
    }
    if container.contains(.targetVirtualMachineId) {
        self.targetVirtualMachineId = try container.decode(String?.self, forKey: .targetVirtualMachineId)
    }
    if container.contains(.targetResourceGroupId) {
        self.targetResourceGroupId = try container.decode(String?.self, forKey: .targetResourceGroupId)
    }
    if container.contains(.storageAccountId) {
        self.storageAccountId = try container.decode(String?.self, forKey: .storageAccountId)
    }
    if container.contains(.virtualNetworkId) {
        self.virtualNetworkId = try container.decode(String?.self, forKey: .virtualNetworkId)
    }
    if container.contains(.subnetId) {
        self.subnetId = try container.decode(String?.self, forKey: .subnetId)
    }
    if container.contains(.targetDomainNameId) {
        self.targetDomainNameId = try container.decode(String?.self, forKey: .targetDomainNameId)
    }
    if container.contains(.region) {
        self.region = try container.decode(String?.self, forKey: .region)
    }
    if container.contains(.affinityGroup) {
        self.affinityGroup = try container.decode(String?.self, forKey: .affinityGroup)
    }
    if container.contains(.createNewCloudService) {
        self.createNewCloudService = try container.decode(Bool?.self, forKey: .createNewCloudService)
    }
    if container.contains(.originalStorageAccountOption) {
        self.originalStorageAccountOption = try container.decode(Bool?.self, forKey: .originalStorageAccountOption)
    }
    if container.contains(.encryptionDetails) {
        self.encryptionDetails = try container.decode(EncryptionDetailsData?.self, forKey: .encryptionDetails)
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
    if self.recoveryPointId != nil {try container.encode(self.recoveryPointId, forKey: .recoveryPointId)}
    if self.recoveryType != nil {try container.encode(self.recoveryType, forKey: .recoveryType)}
    if self.sourceResourceId != nil {try container.encode(self.sourceResourceId, forKey: .sourceResourceId)}
    if self.targetVirtualMachineId != nil {try container.encode(self.targetVirtualMachineId, forKey: .targetVirtualMachineId)}
    if self.targetResourceGroupId != nil {try container.encode(self.targetResourceGroupId, forKey: .targetResourceGroupId)}
    if self.storageAccountId != nil {try container.encode(self.storageAccountId, forKey: .storageAccountId)}
    if self.virtualNetworkId != nil {try container.encode(self.virtualNetworkId, forKey: .virtualNetworkId)}
    if self.subnetId != nil {try container.encode(self.subnetId, forKey: .subnetId)}
    if self.targetDomainNameId != nil {try container.encode(self.targetDomainNameId, forKey: .targetDomainNameId)}
    if self.region != nil {try container.encode(self.region, forKey: .region)}
    if self.affinityGroup != nil {try container.encode(self.affinityGroup, forKey: .affinityGroup)}
    if self.createNewCloudService != nil {try container.encode(self.createNewCloudService, forKey: .createNewCloudService)}
    if self.originalStorageAccountOption != nil {try container.encode(self.originalStorageAccountOption, forKey: .originalStorageAccountOption)}
    if self.encryptionDetails != nil {try container.encode(self.encryptionDetails as! EncryptionDetailsData?, forKey: .encryptionDetails)}
  }
}

extension DataFactory {
  public static func createIaasVMRestoreRequestProtocol() -> IaasVMRestoreRequestProtocol {
    return IaasVMRestoreRequestData()
  }
}
