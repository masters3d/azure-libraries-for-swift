// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HyperVReplicaAzureFailbackProviderInputData : HyperVReplicaAzureFailbackProviderInputProtocol, ProviderSpecificFailoverInputProtocol {
    public var dataSyncOption: String?
    public var recoveryVmCreationOption: String?
    public var providerIdForAlternateRecovery: String?

        enum CodingKeys: String, CodingKey {case dataSyncOption = "dataSyncOption"
        case recoveryVmCreationOption = "recoveryVmCreationOption"
        case providerIdForAlternateRecovery = "providerIdForAlternateRecovery"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.dataSyncOption) {
        self.dataSyncOption = try container.decode(String?.self, forKey: .dataSyncOption)
    }
    if container.contains(.recoveryVmCreationOption) {
        self.recoveryVmCreationOption = try container.decode(String?.self, forKey: .recoveryVmCreationOption)
    }
    if container.contains(.providerIdForAlternateRecovery) {
        self.providerIdForAlternateRecovery = try container.decode(String?.self, forKey: .providerIdForAlternateRecovery)
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
    if self.dataSyncOption != nil {try container.encode(self.dataSyncOption, forKey: .dataSyncOption)}
    if self.recoveryVmCreationOption != nil {try container.encode(self.recoveryVmCreationOption, forKey: .recoveryVmCreationOption)}
    if self.providerIdForAlternateRecovery != nil {try container.encode(self.providerIdForAlternateRecovery, forKey: .providerIdForAlternateRecovery)}
  }
}

extension DataFactory {
  public static func createHyperVReplicaAzureFailbackProviderInputProtocol() -> HyperVReplicaAzureFailbackProviderInputProtocol {
    return HyperVReplicaAzureFailbackProviderInputData()
  }
}
