// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SuggestRelationshipLinksResponseData : SuggestRelationshipLinksResponseProtocol {
    public var interactionName: String?
    public var suggestedRelationships: [RelationshipsLookupProtocol?]?

        enum CodingKeys: String, CodingKey {case interactionName = "interactionName"
        case suggestedRelationships = "suggestedRelationships"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.interactionName) {
        self.interactionName = try container.decode(String?.self, forKey: .interactionName)
    }
    if container.contains(.suggestedRelationships) {
        self.suggestedRelationships = try container.decode([RelationshipsLookupData?]?.self, forKey: .suggestedRelationships)
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
    if self.interactionName != nil {try container.encode(self.interactionName, forKey: .interactionName)}
    if self.suggestedRelationships != nil {try container.encode(self.suggestedRelationships as! [RelationshipsLookupData?]?, forKey: .suggestedRelationships)}
  }
}

extension DataFactory {
  public static func createSuggestRelationshipLinksResponseProtocol() -> SuggestRelationshipLinksResponseProtocol {
    return SuggestRelationshipLinksResponseData()
  }
}
