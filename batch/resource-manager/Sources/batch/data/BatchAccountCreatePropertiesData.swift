// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BatchAccountCreatePropertiesData : BatchAccountCreatePropertiesProtocol {
    public var autoStorage: AutoStorageBasePropertiesProtocol?
    public var poolAllocationMode: PoolAllocationModeEnum?
    public var keyVaultReference: KeyVaultReferenceProtocol?

        enum CodingKeys: String, CodingKey {case autoStorage = "autoStorage"
        case poolAllocationMode = "poolAllocationMode"
        case keyVaultReference = "keyVaultReference"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.autoStorage) {
        self.autoStorage = try container.decode(AutoStorageBasePropertiesData?.self, forKey: .autoStorage)
    }
    if container.contains(.poolAllocationMode) {
        self.poolAllocationMode = try container.decode(PoolAllocationModeEnum?.self, forKey: .poolAllocationMode)
    }
    if container.contains(.keyVaultReference) {
        self.keyVaultReference = try container.decode(KeyVaultReferenceData?.self, forKey: .keyVaultReference)
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
    if self.autoStorage != nil { try container.encode(self.autoStorage as! AutoStorageBasePropertiesData?, forKey: .autoStorage) }
    if self.poolAllocationMode != nil { try container.encode(self.poolAllocationMode, forKey: .poolAllocationMode) }
    if self.keyVaultReference != nil { try container.encode(self.keyVaultReference as! KeyVaultReferenceData?, forKey: .keyVaultReference) }
  }
}

extension DataFactory {
  public static func createBatchAccountCreatePropertiesProtocol() -> BatchAccountCreatePropertiesProtocol {
    return BatchAccountCreatePropertiesData()
  }
}
