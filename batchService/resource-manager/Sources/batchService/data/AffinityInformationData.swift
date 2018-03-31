// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AffinityInformationData : AffinityInformationProtocol {
    public var affinityId: String

        enum CodingKeys: String, CodingKey {case affinityId = "affinityId"
        }

  public init(affinityId: String)  {
    self.affinityId = affinityId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.affinityId = try container.decode(String.self, forKey: .affinityId)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.affinityId, forKey: .affinityId)
  }
}

extension DataFactory {
  public static func createAffinityInformationProtocol(affinityId: String) -> AffinityInformationProtocol {
    return AffinityInformationData(affinityId: affinityId)
  }
}
