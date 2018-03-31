// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BatchAccountPropertiesData : BatchAccountPropertiesProtocol {
    public var accountEndpoint: String?
    public var provisioningState: ProvisioningStateEnum?
    public var poolAllocationMode: PoolAllocationModeEnum?
    public var keyVaultReference: KeyVaultReferenceProtocol?
    public var autoStorage: AutoStoragePropertiesProtocol?
    public var dedicatedCoreQuota: Int32?
    public var lowPriorityCoreQuota: Int32?
    public var poolQuota: Int32?
    public var activeJobAndJobScheduleQuota: Int32?

        enum CodingKeys: String, CodingKey {case accountEndpoint = "accountEndpoint"
        case provisioningState = "provisioningState"
        case poolAllocationMode = "poolAllocationMode"
        case keyVaultReference = "keyVaultReference"
        case autoStorage = "autoStorage"
        case dedicatedCoreQuota = "dedicatedCoreQuota"
        case lowPriorityCoreQuota = "lowPriorityCoreQuota"
        case poolQuota = "poolQuota"
        case activeJobAndJobScheduleQuota = "activeJobAndJobScheduleQuota"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.accountEndpoint) {
        self.accountEndpoint = try container.decode(String?.self, forKey: .accountEndpoint)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(ProvisioningStateEnum?.self, forKey: .provisioningState)
    }
    if container.contains(.poolAllocationMode) {
        self.poolAllocationMode = try container.decode(PoolAllocationModeEnum?.self, forKey: .poolAllocationMode)
    }
    if container.contains(.keyVaultReference) {
        self.keyVaultReference = try container.decode(KeyVaultReferenceData?.self, forKey: .keyVaultReference)
    }
    if container.contains(.autoStorage) {
        self.autoStorage = try container.decode(AutoStoragePropertiesData?.self, forKey: .autoStorage)
    }
    if container.contains(.dedicatedCoreQuota) {
        self.dedicatedCoreQuota = try container.decode(Int32?.self, forKey: .dedicatedCoreQuota)
    }
    if container.contains(.lowPriorityCoreQuota) {
        self.lowPriorityCoreQuota = try container.decode(Int32?.self, forKey: .lowPriorityCoreQuota)
    }
    if container.contains(.poolQuota) {
        self.poolQuota = try container.decode(Int32?.self, forKey: .poolQuota)
    }
    if container.contains(.activeJobAndJobScheduleQuota) {
        self.activeJobAndJobScheduleQuota = try container.decode(Int32?.self, forKey: .activeJobAndJobScheduleQuota)
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
    if self.accountEndpoint != nil {try container.encode(self.accountEndpoint, forKey: .accountEndpoint)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.poolAllocationMode != nil {try container.encode(self.poolAllocationMode, forKey: .poolAllocationMode)}
    if self.keyVaultReference != nil {try container.encode(self.keyVaultReference as! KeyVaultReferenceData?, forKey: .keyVaultReference)}
    if self.autoStorage != nil {try container.encode(self.autoStorage as! AutoStoragePropertiesData?, forKey: .autoStorage)}
    if self.dedicatedCoreQuota != nil {try container.encode(self.dedicatedCoreQuota, forKey: .dedicatedCoreQuota)}
    if self.lowPriorityCoreQuota != nil {try container.encode(self.lowPriorityCoreQuota, forKey: .lowPriorityCoreQuota)}
    if self.poolQuota != nil {try container.encode(self.poolQuota, forKey: .poolQuota)}
    if self.activeJobAndJobScheduleQuota != nil {try container.encode(self.activeJobAndJobScheduleQuota, forKey: .activeJobAndJobScheduleQuota)}
  }
}

extension DataFactory {
  public static func createBatchAccountPropertiesProtocol() -> BatchAccountPropertiesProtocol {
    return BatchAccountPropertiesData()
  }
}
