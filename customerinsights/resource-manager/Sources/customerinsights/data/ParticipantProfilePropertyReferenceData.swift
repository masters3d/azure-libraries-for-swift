// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ParticipantProfilePropertyReferenceData : ParticipantProfilePropertyReferenceProtocol {
    public var interactionPropertyName: String
    public var profilePropertyName: String

        enum CodingKeys: String, CodingKey {case interactionPropertyName = "interactionPropertyName"
        case profilePropertyName = "profilePropertyName"
        }

  public init(interactionPropertyName: String, profilePropertyName: String)  {
    self.interactionPropertyName = interactionPropertyName
    self.profilePropertyName = profilePropertyName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.interactionPropertyName = try container.decode(String.self, forKey: .interactionPropertyName)
    self.profilePropertyName = try container.decode(String.self, forKey: .profilePropertyName)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.interactionPropertyName, forKey: .interactionPropertyName)
    try container.encode(self.profilePropertyName, forKey: .profilePropertyName)
  }
}

extension DataFactory {
  public static func createParticipantProfilePropertyReferenceProtocol(interactionPropertyName: String, profilePropertyName: String) -> ParticipantProfilePropertyReferenceProtocol {
    return ParticipantProfilePropertyReferenceData(interactionPropertyName: interactionPropertyName, profilePropertyName: profilePropertyName)
  }
}
