// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FunctionEnvelopeCollectionData : FunctionEnvelopeCollectionProtocol {
    public var value: [FunctionEnvelopeProtocol]
    public var _nextLink: String?

        enum CodingKeys: String, CodingKey {case value = "value"
        case _nextLink = "nextLink"
        }

  public init(value: [FunctionEnvelopeProtocol])  {
    self.value = value
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.value = try container.decode([FunctionEnvelopeData].self, forKey: .value)
    if container.contains(._nextLink) {
        self._nextLink = try container.decode(String?.self, forKey: ._nextLink)
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
    try container.encode(self.value as! [FunctionEnvelopeData], forKey: .value)
    if self._nextLink != nil {try container.encode(self._nextLink, forKey: ._nextLink)}
  }
}

extension DataFactory {
  public static func createFunctionEnvelopeCollectionProtocol(value: [FunctionEnvelopeProtocol]) -> FunctionEnvelopeCollectionProtocol {
    return FunctionEnvelopeCollectionData(value: value)
  }
}
