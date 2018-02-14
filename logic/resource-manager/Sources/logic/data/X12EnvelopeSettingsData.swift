// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct X12EnvelopeSettingsData : X12EnvelopeSettingsProtocol {
    public var controlStandardsId: Int32
    public var useControlStandardsIdAsRepetitionCharacter: Bool
    public var senderApplicationId: String
    public var receiverApplicationId: String
    public var controlVersionNumber: String
    public var interchangeControlNumberLowerBound: Int32
    public var interchangeControlNumberUpperBound: Int32
    public var rolloverInterchangeControlNumber: Bool
    public var enableDefaultGroupHeaders: Bool
    public var functionalGroupId: String?
    public var groupControlNumberLowerBound: Int32
    public var groupControlNumberUpperBound: Int32
    public var rolloverGroupControlNumber: Bool
    public var groupHeaderAgencyCode: String
    public var groupHeaderVersion: String
    public var transactionSetControlNumberLowerBound: Int32
    public var transactionSetControlNumberUpperBound: Int32
    public var rolloverTransactionSetControlNumber: Bool
    public var transactionSetControlNumberPrefix: String?
    public var transactionSetControlNumberSuffix: String?
    public var overwriteExistingTransactionSetControlNumber: Bool
    public var groupHeaderDateFormat: X12DateFormatEnum
    public var groupHeaderTimeFormat: X12TimeFormatEnum
    public var usageIndicator: UsageIndicatorEnum

        enum CodingKeys: String, CodingKey {case controlStandardsId = "controlStandardsId"
        case useControlStandardsIdAsRepetitionCharacter = "useControlStandardsIdAsRepetitionCharacter"
        case senderApplicationId = "senderApplicationId"
        case receiverApplicationId = "receiverApplicationId"
        case controlVersionNumber = "controlVersionNumber"
        case interchangeControlNumberLowerBound = "interchangeControlNumberLowerBound"
        case interchangeControlNumberUpperBound = "interchangeControlNumberUpperBound"
        case rolloverInterchangeControlNumber = "rolloverInterchangeControlNumber"
        case enableDefaultGroupHeaders = "enableDefaultGroupHeaders"
        case functionalGroupId = "functionalGroupId"
        case groupControlNumberLowerBound = "groupControlNumberLowerBound"
        case groupControlNumberUpperBound = "groupControlNumberUpperBound"
        case rolloverGroupControlNumber = "rolloverGroupControlNumber"
        case groupHeaderAgencyCode = "groupHeaderAgencyCode"
        case groupHeaderVersion = "groupHeaderVersion"
        case transactionSetControlNumberLowerBound = "transactionSetControlNumberLowerBound"
        case transactionSetControlNumberUpperBound = "transactionSetControlNumberUpperBound"
        case rolloverTransactionSetControlNumber = "rolloverTransactionSetControlNumber"
        case transactionSetControlNumberPrefix = "transactionSetControlNumberPrefix"
        case transactionSetControlNumberSuffix = "transactionSetControlNumberSuffix"
        case overwriteExistingTransactionSetControlNumber = "overwriteExistingTransactionSetControlNumber"
        case groupHeaderDateFormat = "groupHeaderDateFormat"
        case groupHeaderTimeFormat = "groupHeaderTimeFormat"
        case usageIndicator = "usageIndicator"
        }

  public init(controlStandardsId: Int32, useControlStandardsIdAsRepetitionCharacter: Bool, senderApplicationId: String, receiverApplicationId: String, controlVersionNumber: String, interchangeControlNumberLowerBound: Int32, interchangeControlNumberUpperBound: Int32, rolloverInterchangeControlNumber: Bool, enableDefaultGroupHeaders: Bool, groupControlNumberLowerBound: Int32, groupControlNumberUpperBound: Int32, rolloverGroupControlNumber: Bool, groupHeaderAgencyCode: String, groupHeaderVersion: String, transactionSetControlNumberLowerBound: Int32, transactionSetControlNumberUpperBound: Int32, rolloverTransactionSetControlNumber: Bool, overwriteExistingTransactionSetControlNumber: Bool, groupHeaderDateFormat: X12DateFormatEnum, groupHeaderTimeFormat: X12TimeFormatEnum, usageIndicator: UsageIndicatorEnum)  {
    self.controlStandardsId = controlStandardsId
    self.useControlStandardsIdAsRepetitionCharacter = useControlStandardsIdAsRepetitionCharacter
    self.senderApplicationId = senderApplicationId
    self.receiverApplicationId = receiverApplicationId
    self.controlVersionNumber = controlVersionNumber
    self.interchangeControlNumberLowerBound = interchangeControlNumberLowerBound
    self.interchangeControlNumberUpperBound = interchangeControlNumberUpperBound
    self.rolloverInterchangeControlNumber = rolloverInterchangeControlNumber
    self.enableDefaultGroupHeaders = enableDefaultGroupHeaders
    self.groupControlNumberLowerBound = groupControlNumberLowerBound
    self.groupControlNumberUpperBound = groupControlNumberUpperBound
    self.rolloverGroupControlNumber = rolloverGroupControlNumber
    self.groupHeaderAgencyCode = groupHeaderAgencyCode
    self.groupHeaderVersion = groupHeaderVersion
    self.transactionSetControlNumberLowerBound = transactionSetControlNumberLowerBound
    self.transactionSetControlNumberUpperBound = transactionSetControlNumberUpperBound
    self.rolloverTransactionSetControlNumber = rolloverTransactionSetControlNumber
    self.overwriteExistingTransactionSetControlNumber = overwriteExistingTransactionSetControlNumber
    self.groupHeaderDateFormat = groupHeaderDateFormat
    self.groupHeaderTimeFormat = groupHeaderTimeFormat
    self.usageIndicator = usageIndicator
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.controlStandardsId = try container.decode(Int32.self, forKey: .controlStandardsId)
    self.useControlStandardsIdAsRepetitionCharacter = try container.decode(Bool.self, forKey: .useControlStandardsIdAsRepetitionCharacter)
    self.senderApplicationId = try container.decode(String.self, forKey: .senderApplicationId)
    self.receiverApplicationId = try container.decode(String.self, forKey: .receiverApplicationId)
    self.controlVersionNumber = try container.decode(String.self, forKey: .controlVersionNumber)
    self.interchangeControlNumberLowerBound = try container.decode(Int32.self, forKey: .interchangeControlNumberLowerBound)
    self.interchangeControlNumberUpperBound = try container.decode(Int32.self, forKey: .interchangeControlNumberUpperBound)
    self.rolloverInterchangeControlNumber = try container.decode(Bool.self, forKey: .rolloverInterchangeControlNumber)
    self.enableDefaultGroupHeaders = try container.decode(Bool.self, forKey: .enableDefaultGroupHeaders)
    if container.contains(.functionalGroupId) {
        self.functionalGroupId = try container.decode(String?.self, forKey: .functionalGroupId)
    }
    self.groupControlNumberLowerBound = try container.decode(Int32.self, forKey: .groupControlNumberLowerBound)
    self.groupControlNumberUpperBound = try container.decode(Int32.self, forKey: .groupControlNumberUpperBound)
    self.rolloverGroupControlNumber = try container.decode(Bool.self, forKey: .rolloverGroupControlNumber)
    self.groupHeaderAgencyCode = try container.decode(String.self, forKey: .groupHeaderAgencyCode)
    self.groupHeaderVersion = try container.decode(String.self, forKey: .groupHeaderVersion)
    self.transactionSetControlNumberLowerBound = try container.decode(Int32.self, forKey: .transactionSetControlNumberLowerBound)
    self.transactionSetControlNumberUpperBound = try container.decode(Int32.self, forKey: .transactionSetControlNumberUpperBound)
    self.rolloverTransactionSetControlNumber = try container.decode(Bool.self, forKey: .rolloverTransactionSetControlNumber)
    if container.contains(.transactionSetControlNumberPrefix) {
        self.transactionSetControlNumberPrefix = try container.decode(String?.self, forKey: .transactionSetControlNumberPrefix)
    }
    if container.contains(.transactionSetControlNumberSuffix) {
        self.transactionSetControlNumberSuffix = try container.decode(String?.self, forKey: .transactionSetControlNumberSuffix)
    }
    self.overwriteExistingTransactionSetControlNumber = try container.decode(Bool.self, forKey: .overwriteExistingTransactionSetControlNumber)
    self.groupHeaderDateFormat = try container.decode(X12DateFormatEnum.self, forKey: .groupHeaderDateFormat)
    self.groupHeaderTimeFormat = try container.decode(X12TimeFormatEnum.self, forKey: .groupHeaderTimeFormat)
    self.usageIndicator = try container.decode(UsageIndicatorEnum.self, forKey: .usageIndicator)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.controlStandardsId, forKey: .controlStandardsId)
    try container.encode(self.useControlStandardsIdAsRepetitionCharacter, forKey: .useControlStandardsIdAsRepetitionCharacter)
    try container.encode(self.senderApplicationId, forKey: .senderApplicationId)
    try container.encode(self.receiverApplicationId, forKey: .receiverApplicationId)
    try container.encode(self.controlVersionNumber, forKey: .controlVersionNumber)
    try container.encode(self.interchangeControlNumberLowerBound, forKey: .interchangeControlNumberLowerBound)
    try container.encode(self.interchangeControlNumberUpperBound, forKey: .interchangeControlNumberUpperBound)
    try container.encode(self.rolloverInterchangeControlNumber, forKey: .rolloverInterchangeControlNumber)
    try container.encode(self.enableDefaultGroupHeaders, forKey: .enableDefaultGroupHeaders)
    if self.functionalGroupId != nil {try container.encode(self.functionalGroupId, forKey: .functionalGroupId)}
    try container.encode(self.groupControlNumberLowerBound, forKey: .groupControlNumberLowerBound)
    try container.encode(self.groupControlNumberUpperBound, forKey: .groupControlNumberUpperBound)
    try container.encode(self.rolloverGroupControlNumber, forKey: .rolloverGroupControlNumber)
    try container.encode(self.groupHeaderAgencyCode, forKey: .groupHeaderAgencyCode)
    try container.encode(self.groupHeaderVersion, forKey: .groupHeaderVersion)
    try container.encode(self.transactionSetControlNumberLowerBound, forKey: .transactionSetControlNumberLowerBound)
    try container.encode(self.transactionSetControlNumberUpperBound, forKey: .transactionSetControlNumberUpperBound)
    try container.encode(self.rolloverTransactionSetControlNumber, forKey: .rolloverTransactionSetControlNumber)
    if self.transactionSetControlNumberPrefix != nil {try container.encode(self.transactionSetControlNumberPrefix, forKey: .transactionSetControlNumberPrefix)}
    if self.transactionSetControlNumberSuffix != nil {try container.encode(self.transactionSetControlNumberSuffix, forKey: .transactionSetControlNumberSuffix)}
    try container.encode(self.overwriteExistingTransactionSetControlNumber, forKey: .overwriteExistingTransactionSetControlNumber)
    try container.encode(self.groupHeaderDateFormat, forKey: .groupHeaderDateFormat)
    try container.encode(self.groupHeaderTimeFormat, forKey: .groupHeaderTimeFormat)
    try container.encode(self.usageIndicator, forKey: .usageIndicator)
  }
}

extension DataFactory {
  public static func createX12EnvelopeSettingsProtocol(controlStandardsId: Int32, useControlStandardsIdAsRepetitionCharacter: Bool, senderApplicationId: String, receiverApplicationId: String, controlVersionNumber: String, interchangeControlNumberLowerBound: Int32, interchangeControlNumberUpperBound: Int32, rolloverInterchangeControlNumber: Bool, enableDefaultGroupHeaders: Bool, groupControlNumberLowerBound: Int32, groupControlNumberUpperBound: Int32, rolloverGroupControlNumber: Bool, groupHeaderAgencyCode: String, groupHeaderVersion: String, transactionSetControlNumberLowerBound: Int32, transactionSetControlNumberUpperBound: Int32, rolloverTransactionSetControlNumber: Bool, overwriteExistingTransactionSetControlNumber: Bool, groupHeaderDateFormat: X12DateFormatEnum, groupHeaderTimeFormat: X12TimeFormatEnum, usageIndicator: UsageIndicatorEnum) -> X12EnvelopeSettingsProtocol {
    return X12EnvelopeSettingsData(controlStandardsId: controlStandardsId, useControlStandardsIdAsRepetitionCharacter: useControlStandardsIdAsRepetitionCharacter, senderApplicationId: senderApplicationId, receiverApplicationId: receiverApplicationId, controlVersionNumber: controlVersionNumber, interchangeControlNumberLowerBound: interchangeControlNumberLowerBound, interchangeControlNumberUpperBound: interchangeControlNumberUpperBound, rolloverInterchangeControlNumber: rolloverInterchangeControlNumber, enableDefaultGroupHeaders: enableDefaultGroupHeaders, groupControlNumberLowerBound: groupControlNumberLowerBound, groupControlNumberUpperBound: groupControlNumberUpperBound, rolloverGroupControlNumber: rolloverGroupControlNumber, groupHeaderAgencyCode: groupHeaderAgencyCode, groupHeaderVersion: groupHeaderVersion, transactionSetControlNumberLowerBound: transactionSetControlNumberLowerBound, transactionSetControlNumberUpperBound: transactionSetControlNumberUpperBound, rolloverTransactionSetControlNumber: rolloverTransactionSetControlNumber, overwriteExistingTransactionSetControlNumber: overwriteExistingTransactionSetControlNumber, groupHeaderDateFormat: groupHeaderDateFormat, groupHeaderTimeFormat: groupHeaderTimeFormat, usageIndicator: usageIndicator)
  }
}
