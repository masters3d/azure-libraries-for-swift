// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BatchAccountRegenerateKeyParametersData : BatchAccountRegenerateKeyParametersProtocol {
    public var keyName: AccountKeyTypeEnum

        enum CodingKeys: String, CodingKey {case keyName = "keyName"
        }

  public init(keyName: AccountKeyTypeEnum)  {
    self.keyName = keyName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.keyName = try container.decode(AccountKeyTypeEnum.self, forKey: .keyName)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.keyName, forKey: .keyName)
  }
}

extension DataFactory {
  public static func createBatchAccountRegenerateKeyParametersProtocol(keyName: AccountKeyTypeEnum) -> BatchAccountRegenerateKeyParametersProtocol {
    return BatchAccountRegenerateKeyParametersData(keyName: keyName)
  }
}
