// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RegenerateActionParameterData : RegenerateActionParameterProtocol {
    public var keyType: KeyTypeEnum?

        enum CodingKeys: String, CodingKey {case keyType = "keyType"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.keyType) {
        self.keyType = try container.decode(KeyTypeEnum?.self, forKey: .keyType)
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
    if self.keyType != nil { try container.encode(self.keyType, forKey: .keyType) }
  }
}

extension DataFactory {
  public static func createRegenerateActionParameterProtocol() -> RegenerateActionParameterProtocol {
    return RegenerateActionParameterData()
  }
}
