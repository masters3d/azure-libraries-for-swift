// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InMageAzureV2UpdateReplicationProtectedItemInputData : InMageAzureV2UpdateReplicationProtectedItemInputProtocol, UpdateReplicationProtectedItemProviderInputProtocol {
    public var recoveryAzureV1ResourceGroupId: String?
    public var recoveryAzureV2ResourceGroupId: String?
    public var useManagedDisks: String?

        enum CodingKeys: String, CodingKey {case recoveryAzureV1ResourceGroupId = "recoveryAzureV1ResourceGroupId"
        case recoveryAzureV2ResourceGroupId = "recoveryAzureV2ResourceGroupId"
        case useManagedDisks = "useManagedDisks"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.recoveryAzureV1ResourceGroupId) {
        self.recoveryAzureV1ResourceGroupId = try container.decode(String?.self, forKey: .recoveryAzureV1ResourceGroupId)
    }
    if container.contains(.recoveryAzureV2ResourceGroupId) {
        self.recoveryAzureV2ResourceGroupId = try container.decode(String?.self, forKey: .recoveryAzureV2ResourceGroupId)
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
    if self.recoveryAzureV1ResourceGroupId != nil {try container.encode(self.recoveryAzureV1ResourceGroupId, forKey: .recoveryAzureV1ResourceGroupId)}
    if self.recoveryAzureV2ResourceGroupId != nil {try container.encode(self.recoveryAzureV2ResourceGroupId, forKey: .recoveryAzureV2ResourceGroupId)}
    if self.useManagedDisks != nil {try container.encode(self.useManagedDisks, forKey: .useManagedDisks)}
  }
}

extension DataFactory {
  public static func createInMageAzureV2UpdateReplicationProtectedItemInputProtocol() -> InMageAzureV2UpdateReplicationProtectedItemInputProtocol {
    return InMageAzureV2UpdateReplicationProtectedItemInputData()
  }
}
