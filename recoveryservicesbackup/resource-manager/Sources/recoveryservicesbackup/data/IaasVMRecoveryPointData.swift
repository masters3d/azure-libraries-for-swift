// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IaasVMRecoveryPointData : IaasVMRecoveryPointProtocol, RecoveryPointProtocol {
    public var recoveryPointType: String?
    public var recoveryPointTime: Date?
    public var recoveryPointAdditionalInfo: String?
    public var sourceVMStorageType: String?
    public var isSourceVMEncrypted: Bool?
    public var keyAndSecret: KeyAndSecretDetailsProtocol?
    public var isInstantIlrSessionActive: Bool?
    public var recoveryPointTierDetails: [RecoveryPointTierInformationProtocol?]?
    public var isManagedVirtualMachine: Bool?
    public var virtualMachineSize: String?
    public var originalStorageAccountOption: Bool?

        enum CodingKeys: String, CodingKey {case recoveryPointType = "recoveryPointType"
        case recoveryPointTime = "recoveryPointTime"
        case recoveryPointAdditionalInfo = "recoveryPointAdditionalInfo"
        case sourceVMStorageType = "sourceVMStorageType"
        case isSourceVMEncrypted = "isSourceVMEncrypted"
        case keyAndSecret = "keyAndSecret"
        case isInstantIlrSessionActive = "isInstantIlrSessionActive"
        case recoveryPointTierDetails = "recoveryPointTierDetails"
        case isManagedVirtualMachine = "isManagedVirtualMachine"
        case virtualMachineSize = "virtualMachineSize"
        case originalStorageAccountOption = "originalStorageAccountOption"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.recoveryPointType) {
        self.recoveryPointType = try container.decode(String?.self, forKey: .recoveryPointType)
    }
    if container.contains(.recoveryPointTime) {
        self.recoveryPointTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .recoveryPointTime)), format: .dateTime)
    }
    if container.contains(.recoveryPointAdditionalInfo) {
        self.recoveryPointAdditionalInfo = try container.decode(String?.self, forKey: .recoveryPointAdditionalInfo)
    }
    if container.contains(.sourceVMStorageType) {
        self.sourceVMStorageType = try container.decode(String?.self, forKey: .sourceVMStorageType)
    }
    if container.contains(.isSourceVMEncrypted) {
        self.isSourceVMEncrypted = try container.decode(Bool?.self, forKey: .isSourceVMEncrypted)
    }
    if container.contains(.keyAndSecret) {
        self.keyAndSecret = try container.decode(KeyAndSecretDetailsData?.self, forKey: .keyAndSecret)
    }
    if container.contains(.isInstantIlrSessionActive) {
        self.isInstantIlrSessionActive = try container.decode(Bool?.self, forKey: .isInstantIlrSessionActive)
    }
    if container.contains(.recoveryPointTierDetails) {
        self.recoveryPointTierDetails = try container.decode([RecoveryPointTierInformationData?]?.self, forKey: .recoveryPointTierDetails)
    }
    if container.contains(.isManagedVirtualMachine) {
        self.isManagedVirtualMachine = try container.decode(Bool?.self, forKey: .isManagedVirtualMachine)
    }
    if container.contains(.virtualMachineSize) {
        self.virtualMachineSize = try container.decode(String?.self, forKey: .virtualMachineSize)
    }
    if container.contains(.originalStorageAccountOption) {
        self.originalStorageAccountOption = try container.decode(Bool?.self, forKey: .originalStorageAccountOption)
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
    if self.recoveryPointType != nil { try container.encode(self.recoveryPointType, forKey: .recoveryPointType) }
    if self.recoveryPointTime != nil {
        try container.encode(DateConverter.toString(date: self.recoveryPointTime!, format: .dateTime), forKey: .recoveryPointTime)
    }
    if self.recoveryPointAdditionalInfo != nil { try container.encode(self.recoveryPointAdditionalInfo, forKey: .recoveryPointAdditionalInfo) }
    if self.sourceVMStorageType != nil { try container.encode(self.sourceVMStorageType, forKey: .sourceVMStorageType) }
    if self.isSourceVMEncrypted != nil { try container.encode(self.isSourceVMEncrypted, forKey: .isSourceVMEncrypted) }
    if self.keyAndSecret != nil { try container.encode(self.keyAndSecret as! KeyAndSecretDetailsData?, forKey: .keyAndSecret) }
    if self.isInstantIlrSessionActive != nil { try container.encode(self.isInstantIlrSessionActive, forKey: .isInstantIlrSessionActive) }
    if self.recoveryPointTierDetails != nil { try container.encode(self.recoveryPointTierDetails as! [RecoveryPointTierInformationData?]?, forKey: .recoveryPointTierDetails) }
    if self.isManagedVirtualMachine != nil { try container.encode(self.isManagedVirtualMachine, forKey: .isManagedVirtualMachine) }
    if self.virtualMachineSize != nil { try container.encode(self.virtualMachineSize, forKey: .virtualMachineSize) }
    if self.originalStorageAccountOption != nil { try container.encode(self.originalStorageAccountOption, forKey: .originalStorageAccountOption) }
  }
}

extension DataFactory {
  public static func createIaasVMRecoveryPointProtocol() -> IaasVMRecoveryPointProtocol {
    return IaasVMRecoveryPointData()
  }
}
