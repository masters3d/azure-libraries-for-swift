// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VaultHealthPropertiesData : VaultHealthPropertiesProtocol {
    public var vaultErrors: [HealthErrorProtocol?]?
    public var protectedItemsHealth: ResourceHealthSummaryProtocol?
    public var fabricsHealth: ResourceHealthSummaryProtocol?

        enum CodingKeys: String, CodingKey {case vaultErrors = "vaultErrors"
        case protectedItemsHealth = "protectedItemsHealth"
        case fabricsHealth = "fabricsHealth"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.vaultErrors) {
        self.vaultErrors = try container.decode([HealthErrorData?]?.self, forKey: .vaultErrors)
    }
    if container.contains(.protectedItemsHealth) {
        self.protectedItemsHealth = try container.decode(ResourceHealthSummaryData?.self, forKey: .protectedItemsHealth)
    }
    if container.contains(.fabricsHealth) {
        self.fabricsHealth = try container.decode(ResourceHealthSummaryData?.self, forKey: .fabricsHealth)
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
    if self.vaultErrors != nil {try container.encode(self.vaultErrors as! [HealthErrorData?]?, forKey: .vaultErrors)}
    if self.protectedItemsHealth != nil {try container.encode(self.protectedItemsHealth as! ResourceHealthSummaryData?, forKey: .protectedItemsHealth)}
    if self.fabricsHealth != nil {try container.encode(self.fabricsHealth as! ResourceHealthSummaryData?, forKey: .fabricsHealth)}
  }
}

extension DataFactory {
  public static func createVaultHealthPropertiesProtocol() -> VaultHealthPropertiesProtocol {
    return VaultHealthPropertiesData()
  }
}
