// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RegenerateAccessKeyParametersData : RegenerateAccessKeyParametersProtocol {
    public var keyType: KeyTypeEnum
    public var key: String?

        enum CodingKeys: String, CodingKey {case keyType = "keyType"
        case key = "key"
        }

  public init(keyType: KeyTypeEnum)  {
    self.keyType = keyType
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.keyType = try container.decode(KeyTypeEnum.self, forKey: .keyType)
    if container.contains(.key) {
        self.key = try container.decode(String?.self, forKey: .key)
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
    try container.encode(self.keyType, forKey: .keyType)
    if self.key != nil {try container.encode(self.key, forKey: .key)}
  }
}

extension DataFactory {
  public static func createRegenerateAccessKeyParametersProtocol(keyType: KeyTypeEnum) -> RegenerateAccessKeyParametersProtocol {
    return RegenerateAccessKeyParametersData(keyType: keyType)
  }
}
