// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct X12ValidationOverrideData : X12ValidationOverrideProtocol {
    public var messageId: String
    public var validateEdiTypes: Bool
    public var validateXsdTypes: Bool
    public var allowLeadingAndTrailingSpacesAndZeroes: Bool
    public var validateCharacterSet: Bool
    public var trimLeadingAndTrailingSpacesAndZeroes: Bool
    public var trailingSeparatorPolicy: TrailingSeparatorPolicyEnum

        enum CodingKeys: String, CodingKey {case messageId = "messageId"
        case validateEdiTypes = "validateEdiTypes"
        case validateXsdTypes = "validateXsdTypes"
        case allowLeadingAndTrailingSpacesAndZeroes = "allowLeadingAndTrailingSpacesAndZeroes"
        case validateCharacterSet = "validateCharacterSet"
        case trimLeadingAndTrailingSpacesAndZeroes = "trimLeadingAndTrailingSpacesAndZeroes"
        case trailingSeparatorPolicy = "trailingSeparatorPolicy"
        }

  public init(messageId: String, validateEdiTypes: Bool, validateXsdTypes: Bool, allowLeadingAndTrailingSpacesAndZeroes: Bool, validateCharacterSet: Bool, trimLeadingAndTrailingSpacesAndZeroes: Bool, trailingSeparatorPolicy: TrailingSeparatorPolicyEnum)  {
    self.messageId = messageId
    self.validateEdiTypes = validateEdiTypes
    self.validateXsdTypes = validateXsdTypes
    self.allowLeadingAndTrailingSpacesAndZeroes = allowLeadingAndTrailingSpacesAndZeroes
    self.validateCharacterSet = validateCharacterSet
    self.trimLeadingAndTrailingSpacesAndZeroes = trimLeadingAndTrailingSpacesAndZeroes
    self.trailingSeparatorPolicy = trailingSeparatorPolicy
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.messageId = try container.decode(String.self, forKey: .messageId)
    self.validateEdiTypes = try container.decode(Bool.self, forKey: .validateEdiTypes)
    self.validateXsdTypes = try container.decode(Bool.self, forKey: .validateXsdTypes)
    self.allowLeadingAndTrailingSpacesAndZeroes = try container.decode(Bool.self, forKey: .allowLeadingAndTrailingSpacesAndZeroes)
    self.validateCharacterSet = try container.decode(Bool.self, forKey: .validateCharacterSet)
    self.trimLeadingAndTrailingSpacesAndZeroes = try container.decode(Bool.self, forKey: .trimLeadingAndTrailingSpacesAndZeroes)
    self.trailingSeparatorPolicy = try container.decode(TrailingSeparatorPolicyEnum.self, forKey: .trailingSeparatorPolicy)
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
    try container.encode(self.validateEdiTypes, forKey: .validateEdiTypes)
    try container.encode(self.validateXsdTypes, forKey: .validateXsdTypes)
    try container.encode(self.allowLeadingAndTrailingSpacesAndZeroes, forKey: .allowLeadingAndTrailingSpacesAndZeroes)
    try container.encode(self.validateCharacterSet, forKey: .validateCharacterSet)
    try container.encode(self.trimLeadingAndTrailingSpacesAndZeroes, forKey: .trimLeadingAndTrailingSpacesAndZeroes)
    try container.encode(self.trailingSeparatorPolicy, forKey: .trailingSeparatorPolicy)
  }
}

extension DataFactory {
  public static func createX12ValidationOverrideProtocol(messageId: String, validateEdiTypes: Bool, validateXsdTypes: Bool, allowLeadingAndTrailingSpacesAndZeroes: Bool, validateCharacterSet: Bool, trimLeadingAndTrailingSpacesAndZeroes: Bool, trailingSeparatorPolicy: TrailingSeparatorPolicyEnum) -> X12ValidationOverrideProtocol {
    return X12ValidationOverrideData(messageId: messageId, validateEdiTypes: validateEdiTypes, validateXsdTypes: validateXsdTypes, allowLeadingAndTrailingSpacesAndZeroes: allowLeadingAndTrailingSpacesAndZeroes, validateCharacterSet: validateCharacterSet, trimLeadingAndTrailingSpacesAndZeroes: trimLeadingAndTrailingSpacesAndZeroes, trailingSeparatorPolicy: trailingSeparatorPolicy)
  }
}
