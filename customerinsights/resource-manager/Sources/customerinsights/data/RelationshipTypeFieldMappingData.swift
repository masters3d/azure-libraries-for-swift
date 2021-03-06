// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RelationshipTypeFieldMappingData : RelationshipTypeFieldMappingProtocol {
    public var profileFieldName: String
    public var relatedProfileKeyProperty: String

        enum CodingKeys: String, CodingKey {case profileFieldName = "profileFieldName"
        case relatedProfileKeyProperty = "relatedProfileKeyProperty"
        }

  public init(profileFieldName: String, relatedProfileKeyProperty: String)  {
    self.profileFieldName = profileFieldName
    self.relatedProfileKeyProperty = relatedProfileKeyProperty
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.profileFieldName = try container.decode(String.self, forKey: .profileFieldName)
    self.relatedProfileKeyProperty = try container.decode(String.self, forKey: .relatedProfileKeyProperty)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.profileFieldName, forKey: .profileFieldName)
    try container.encode(self.relatedProfileKeyProperty, forKey: .relatedProfileKeyProperty)
  }
}

extension DataFactory {
  public static func createRelationshipTypeFieldMappingProtocol(profileFieldName: String, relatedProfileKeyProperty: String) -> RelationshipTypeFieldMappingProtocol {
    return RelationshipTypeFieldMappingData(profileFieldName: profileFieldName, relatedProfileKeyProperty: relatedProfileKeyProperty)
  }
}
