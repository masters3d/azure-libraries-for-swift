// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InMageAzureV2ApplyRecoveryPointInputData : InMageAzureV2ApplyRecoveryPointInputProtocol, ApplyRecoveryPointProviderSpecificInputProtocol {
    public var vaultLocation: String?

        enum CodingKeys: String, CodingKey {case vaultLocation = "vaultLocation"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.vaultLocation) {
        self.vaultLocation = try container.decode(String?.self, forKey: .vaultLocation)
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
    if self.vaultLocation != nil {try container.encode(self.vaultLocation, forKey: .vaultLocation)}
  }
}

extension DataFactory {
  public static func createInMageAzureV2ApplyRecoveryPointInputProtocol() -> InMageAzureV2ApplyRecoveryPointInputProtocol {
    return InMageAzureV2ApplyRecoveryPointInputData()
  }
}
