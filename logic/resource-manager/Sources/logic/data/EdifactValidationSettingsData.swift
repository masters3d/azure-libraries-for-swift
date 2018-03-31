// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EdifactValidationSettingsData : EdifactValidationSettingsProtocol {
    public var validateCharacterSet: Bool
    public var checkDuplicateInterchangeControlNumber: Bool
    public var interchangeControlNumberValidityDays: Int32
    public var checkDuplicateGroupControlNumber: Bool
    public var checkDuplicateTransactionSetControlNumber: Bool
    public var validateEdiTypes: Bool
    public var validateXsdTypes: Bool
    public var allowLeadingAndTrailingSpacesAndZeroes: Bool
    public var trimLeadingAndTrailingSpacesAndZeroes: Bool
    public var trailingSeparatorPolicy: TrailingSeparatorPolicyEnum

        enum CodingKeys: String, CodingKey {case validateCharacterSet = "validateCharacterSet"
        case checkDuplicateInterchangeControlNumber = "checkDuplicateInterchangeControlNumber"
        case interchangeControlNumberValidityDays = "interchangeControlNumberValidityDays"
        case checkDuplicateGroupControlNumber = "checkDuplicateGroupControlNumber"
        case checkDuplicateTransactionSetControlNumber = "checkDuplicateTransactionSetControlNumber"
        case validateEdiTypes = "validateEdiTypes"
        case validateXsdTypes = "validateXsdTypes"
        case allowLeadingAndTrailingSpacesAndZeroes = "allowLeadingAndTrailingSpacesAndZeroes"
        case trimLeadingAndTrailingSpacesAndZeroes = "trimLeadingAndTrailingSpacesAndZeroes"
        case trailingSeparatorPolicy = "trailingSeparatorPolicy"
        }

  public init(validateCharacterSet: Bool, checkDuplicateInterchangeControlNumber: Bool, interchangeControlNumberValidityDays: Int32, checkDuplicateGroupControlNumber: Bool, checkDuplicateTransactionSetControlNumber: Bool, validateEdiTypes: Bool, validateXsdTypes: Bool, allowLeadingAndTrailingSpacesAndZeroes: Bool, trimLeadingAndTrailingSpacesAndZeroes: Bool, trailingSeparatorPolicy: TrailingSeparatorPolicyEnum)  {
    self.validateCharacterSet = validateCharacterSet
    self.checkDuplicateInterchangeControlNumber = checkDuplicateInterchangeControlNumber
    self.interchangeControlNumberValidityDays = interchangeControlNumberValidityDays
    self.checkDuplicateGroupControlNumber = checkDuplicateGroupControlNumber
    self.checkDuplicateTransactionSetControlNumber = checkDuplicateTransactionSetControlNumber
    self.validateEdiTypes = validateEdiTypes
    self.validateXsdTypes = validateXsdTypes
    self.allowLeadingAndTrailingSpacesAndZeroes = allowLeadingAndTrailingSpacesAndZeroes
    self.trimLeadingAndTrailingSpacesAndZeroes = trimLeadingAndTrailingSpacesAndZeroes
    self.trailingSeparatorPolicy = trailingSeparatorPolicy
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.validateCharacterSet = try container.decode(Bool.self, forKey: .validateCharacterSet)
    self.checkDuplicateInterchangeControlNumber = try container.decode(Bool.self, forKey: .checkDuplicateInterchangeControlNumber)
    self.interchangeControlNumberValidityDays = try container.decode(Int32.self, forKey: .interchangeControlNumberValidityDays)
    self.checkDuplicateGroupControlNumber = try container.decode(Bool.self, forKey: .checkDuplicateGroupControlNumber)
    self.checkDuplicateTransactionSetControlNumber = try container.decode(Bool.self, forKey: .checkDuplicateTransactionSetControlNumber)
    self.validateEdiTypes = try container.decode(Bool.self, forKey: .validateEdiTypes)
    self.validateXsdTypes = try container.decode(Bool.self, forKey: .validateXsdTypes)
    self.allowLeadingAndTrailingSpacesAndZeroes = try container.decode(Bool.self, forKey: .allowLeadingAndTrailingSpacesAndZeroes)
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
    try container.encode(self.validateCharacterSet, forKey: .validateCharacterSet)
    try container.encode(self.checkDuplicateInterchangeControlNumber, forKey: .checkDuplicateInterchangeControlNumber)
    try container.encode(self.interchangeControlNumberValidityDays, forKey: .interchangeControlNumberValidityDays)
    try container.encode(self.checkDuplicateGroupControlNumber, forKey: .checkDuplicateGroupControlNumber)
    try container.encode(self.checkDuplicateTransactionSetControlNumber, forKey: .checkDuplicateTransactionSetControlNumber)
    try container.encode(self.validateEdiTypes, forKey: .validateEdiTypes)
    try container.encode(self.validateXsdTypes, forKey: .validateXsdTypes)
    try container.encode(self.allowLeadingAndTrailingSpacesAndZeroes, forKey: .allowLeadingAndTrailingSpacesAndZeroes)
    try container.encode(self.trimLeadingAndTrailingSpacesAndZeroes, forKey: .trimLeadingAndTrailingSpacesAndZeroes)
    try container.encode(self.trailingSeparatorPolicy, forKey: .trailingSeparatorPolicy)
  }
}

extension DataFactory {
  public static func createEdifactValidationSettingsProtocol(validateCharacterSet: Bool, checkDuplicateInterchangeControlNumber: Bool, interchangeControlNumberValidityDays: Int32, checkDuplicateGroupControlNumber: Bool, checkDuplicateTransactionSetControlNumber: Bool, validateEdiTypes: Bool, validateXsdTypes: Bool, allowLeadingAndTrailingSpacesAndZeroes: Bool, trimLeadingAndTrailingSpacesAndZeroes: Bool, trailingSeparatorPolicy: TrailingSeparatorPolicyEnum) -> EdifactValidationSettingsProtocol {
    return EdifactValidationSettingsData(validateCharacterSet: validateCharacterSet, checkDuplicateInterchangeControlNumber: checkDuplicateInterchangeControlNumber, interchangeControlNumberValidityDays: interchangeControlNumberValidityDays, checkDuplicateGroupControlNumber: checkDuplicateGroupControlNumber, checkDuplicateTransactionSetControlNumber: checkDuplicateTransactionSetControlNumber, validateEdiTypes: validateEdiTypes, validateXsdTypes: validateXsdTypes, allowLeadingAndTrailingSpacesAndZeroes: allowLeadingAndTrailingSpacesAndZeroes, trimLeadingAndTrailingSpacesAndZeroes: trimLeadingAndTrailingSpacesAndZeroes, trailingSeparatorPolicy: trailingSeparatorPolicy)
  }
}
