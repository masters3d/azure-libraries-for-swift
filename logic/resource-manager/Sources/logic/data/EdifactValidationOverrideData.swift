// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EdifactValidationOverrideData : EdifactValidationOverrideProtocol {
    public var messageId: String
    public var enforceCharacterSet: Bool
    public var validateEdiTypes: Bool
    public var validateXsdTypes: Bool
    public var allowLeadingAndTrailingSpacesAndZeroes: Bool
    public var trailingSeparatorPolicy: TrailingSeparatorPolicyEnum
    public var trimLeadingAndTrailingSpacesAndZeroes: Bool

        enum CodingKeys: String, CodingKey {case messageId = "messageId"
        case enforceCharacterSet = "enforceCharacterSet"
        case validateEdiTypes = "validateEdiTypes"
        case validateXsdTypes = "validateXsdTypes"
        case allowLeadingAndTrailingSpacesAndZeroes = "allowLeadingAndTrailingSpacesAndZeroes"
        case trailingSeparatorPolicy = "trailingSeparatorPolicy"
        case trimLeadingAndTrailingSpacesAndZeroes = "trimLeadingAndTrailingSpacesAndZeroes"
        }

  public init(messageId: String, enforceCharacterSet: Bool, validateEdiTypes: Bool, validateXsdTypes: Bool, allowLeadingAndTrailingSpacesAndZeroes: Bool, trailingSeparatorPolicy: TrailingSeparatorPolicyEnum, trimLeadingAndTrailingSpacesAndZeroes: Bool)  {
    self.messageId = messageId
    self.enforceCharacterSet = enforceCharacterSet
    self.validateEdiTypes = validateEdiTypes
    self.validateXsdTypes = validateXsdTypes
    self.allowLeadingAndTrailingSpacesAndZeroes = allowLeadingAndTrailingSpacesAndZeroes
    self.trailingSeparatorPolicy = trailingSeparatorPolicy
    self.trimLeadingAndTrailingSpacesAndZeroes = trimLeadingAndTrailingSpacesAndZeroes
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.messageId = try container.decode(String.self, forKey: .messageId)
    self.enforceCharacterSet = try container.decode(Bool.self, forKey: .enforceCharacterSet)
    self.validateEdiTypes = try container.decode(Bool.self, forKey: .validateEdiTypes)
    self.validateXsdTypes = try container.decode(Bool.self, forKey: .validateXsdTypes)
    self.allowLeadingAndTrailingSpacesAndZeroes = try container.decode(Bool.self, forKey: .allowLeadingAndTrailingSpacesAndZeroes)
    self.trailingSeparatorPolicy = try container.decode(TrailingSeparatorPolicyEnum.self, forKey: .trailingSeparatorPolicy)
    self.trimLeadingAndTrailingSpacesAndZeroes = try container.decode(Bool.self, forKey: .trimLeadingAndTrailingSpacesAndZeroes)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.messageId, forKey: .messageId)
    try container.encode(self.enforceCharacterSet, forKey: .enforceCharacterSet)
    try container.encode(self.validateEdiTypes, forKey: .validateEdiTypes)
    try container.encode(self.validateXsdTypes, forKey: .validateXsdTypes)
    try container.encode(self.allowLeadingAndTrailingSpacesAndZeroes, forKey: .allowLeadingAndTrailingSpacesAndZeroes)
    try container.encode(self.trailingSeparatorPolicy, forKey: .trailingSeparatorPolicy)
    try container.encode(self.trimLeadingAndTrailingSpacesAndZeroes, forKey: .trimLeadingAndTrailingSpacesAndZeroes)
  }
}

extension DataFactory {
  public static func createEdifactValidationOverrideProtocol(messageId: String, enforceCharacterSet: Bool, validateEdiTypes: Bool, validateXsdTypes: Bool, allowLeadingAndTrailingSpacesAndZeroes: Bool, trailingSeparatorPolicy: TrailingSeparatorPolicyEnum, trimLeadingAndTrailingSpacesAndZeroes: Bool) -> EdifactValidationOverrideProtocol {
    return EdifactValidationOverrideData(messageId: messageId, enforceCharacterSet: enforceCharacterSet, validateEdiTypes: validateEdiTypes, validateXsdTypes: validateXsdTypes, allowLeadingAndTrailingSpacesAndZeroes: allowLeadingAndTrailingSpacesAndZeroes, trailingSeparatorPolicy: trailingSeparatorPolicy, trimLeadingAndTrailingSpacesAndZeroes: trimLeadingAndTrailingSpacesAndZeroes)
  }
}