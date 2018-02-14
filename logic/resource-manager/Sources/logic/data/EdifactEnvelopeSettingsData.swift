// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EdifactEnvelopeSettingsData : EdifactEnvelopeSettingsProtocol {
    public var groupAssociationAssignedCode: String?
    public var communicationAgreementId: String?
    public var applyDelimiterStringAdvice: Bool
    public var createGroupingSegments: Bool
    public var enableDefaultGroupHeaders: Bool
    public var recipientReferencePasswordValue: String?
    public var recipientReferencePasswordQualifier: String?
    public var applicationReferenceId: String?
    public var processingPriorityCode: String?
    public var interchangeControlNumberLowerBound: Int64
    public var interchangeControlNumberUpperBound: Int64
    public var rolloverInterchangeControlNumber: Bool
    public var interchangeControlNumberPrefix: String?
    public var interchangeControlNumberSuffix: String?
    public var senderReverseRoutingAddress: String?
    public var receiverReverseRoutingAddress: String?
    public var functionalGroupId: String?
    public var groupControllingAgencyCode: String?
    public var groupMessageVersion: String?
    public var groupMessageRelease: String?
    public var groupControlNumberLowerBound: Int64
    public var groupControlNumberUpperBound: Int64
    public var rolloverGroupControlNumber: Bool
    public var groupControlNumberPrefix: String?
    public var groupControlNumberSuffix: String?
    public var groupApplicationReceiverQualifier: String?
    public var groupApplicationReceiverId: String?
    public var groupApplicationSenderQualifier: String?
    public var groupApplicationSenderId: String?
    public var groupApplicationPassword: String?
    public var overwriteExistingTransactionSetControlNumber: Bool
    public var transactionSetControlNumberPrefix: String?
    public var transactionSetControlNumberSuffix: String?
    public var transactionSetControlNumberLowerBound: Int64
    public var transactionSetControlNumberUpperBound: Int64
    public var rolloverTransactionSetControlNumber: Bool
    public var isTestInterchange: Bool
    public var senderInternalIdentification: String?
    public var senderInternalSubIdentification: String?
    public var receiverInternalIdentification: String?
    public var receiverInternalSubIdentification: String?

        enum CodingKeys: String, CodingKey {case groupAssociationAssignedCode = "groupAssociationAssignedCode"
        case communicationAgreementId = "communicationAgreementId"
        case applyDelimiterStringAdvice = "applyDelimiterStringAdvice"
        case createGroupingSegments = "createGroupingSegments"
        case enableDefaultGroupHeaders = "enableDefaultGroupHeaders"
        case recipientReferencePasswordValue = "recipientReferencePasswordValue"
        case recipientReferencePasswordQualifier = "recipientReferencePasswordQualifier"
        case applicationReferenceId = "applicationReferenceId"
        case processingPriorityCode = "processingPriorityCode"
        case interchangeControlNumberLowerBound = "interchangeControlNumberLowerBound"
        case interchangeControlNumberUpperBound = "interchangeControlNumberUpperBound"
        case rolloverInterchangeControlNumber = "rolloverInterchangeControlNumber"
        case interchangeControlNumberPrefix = "interchangeControlNumberPrefix"
        case interchangeControlNumberSuffix = "interchangeControlNumberSuffix"
        case senderReverseRoutingAddress = "senderReverseRoutingAddress"
        case receiverReverseRoutingAddress = "receiverReverseRoutingAddress"
        case functionalGroupId = "functionalGroupId"
        case groupControllingAgencyCode = "groupControllingAgencyCode"
        case groupMessageVersion = "groupMessageVersion"
        case groupMessageRelease = "groupMessageRelease"
        case groupControlNumberLowerBound = "groupControlNumberLowerBound"
        case groupControlNumberUpperBound = "groupControlNumberUpperBound"
        case rolloverGroupControlNumber = "rolloverGroupControlNumber"
        case groupControlNumberPrefix = "groupControlNumberPrefix"
        case groupControlNumberSuffix = "groupControlNumberSuffix"
        case groupApplicationReceiverQualifier = "groupApplicationReceiverQualifier"
        case groupApplicationReceiverId = "groupApplicationReceiverId"
        case groupApplicationSenderQualifier = "groupApplicationSenderQualifier"
        case groupApplicationSenderId = "groupApplicationSenderId"
        case groupApplicationPassword = "groupApplicationPassword"
        case overwriteExistingTransactionSetControlNumber = "overwriteExistingTransactionSetControlNumber"
        case transactionSetControlNumberPrefix = "transactionSetControlNumberPrefix"
        case transactionSetControlNumberSuffix = "transactionSetControlNumberSuffix"
        case transactionSetControlNumberLowerBound = "transactionSetControlNumberLowerBound"
        case transactionSetControlNumberUpperBound = "transactionSetControlNumberUpperBound"
        case rolloverTransactionSetControlNumber = "rolloverTransactionSetControlNumber"
        case isTestInterchange = "isTestInterchange"
        case senderInternalIdentification = "senderInternalIdentification"
        case senderInternalSubIdentification = "senderInternalSubIdentification"
        case receiverInternalIdentification = "receiverInternalIdentification"
        case receiverInternalSubIdentification = "receiverInternalSubIdentification"
        }

  public init(applyDelimiterStringAdvice: Bool, createGroupingSegments: Bool, enableDefaultGroupHeaders: Bool, interchangeControlNumberLowerBound: Int64, interchangeControlNumberUpperBound: Int64, rolloverInterchangeControlNumber: Bool, groupControlNumberLowerBound: Int64, groupControlNumberUpperBound: Int64, rolloverGroupControlNumber: Bool, overwriteExistingTransactionSetControlNumber: Bool, transactionSetControlNumberLowerBound: Int64, transactionSetControlNumberUpperBound: Int64, rolloverTransactionSetControlNumber: Bool, isTestInterchange: Bool)  {
    self.applyDelimiterStringAdvice = applyDelimiterStringAdvice
    self.createGroupingSegments = createGroupingSegments
    self.enableDefaultGroupHeaders = enableDefaultGroupHeaders
    self.interchangeControlNumberLowerBound = interchangeControlNumberLowerBound
    self.interchangeControlNumberUpperBound = interchangeControlNumberUpperBound
    self.rolloverInterchangeControlNumber = rolloverInterchangeControlNumber
    self.groupControlNumberLowerBound = groupControlNumberLowerBound
    self.groupControlNumberUpperBound = groupControlNumberUpperBound
    self.rolloverGroupControlNumber = rolloverGroupControlNumber
    self.overwriteExistingTransactionSetControlNumber = overwriteExistingTransactionSetControlNumber
    self.transactionSetControlNumberLowerBound = transactionSetControlNumberLowerBound
    self.transactionSetControlNumberUpperBound = transactionSetControlNumberUpperBound
    self.rolloverTransactionSetControlNumber = rolloverTransactionSetControlNumber
    self.isTestInterchange = isTestInterchange
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.groupAssociationAssignedCode) {
        self.groupAssociationAssignedCode = try container.decode(String?.self, forKey: .groupAssociationAssignedCode)
    }
    if container.contains(.communicationAgreementId) {
        self.communicationAgreementId = try container.decode(String?.self, forKey: .communicationAgreementId)
    }
    self.applyDelimiterStringAdvice = try container.decode(Bool.self, forKey: .applyDelimiterStringAdvice)
    self.createGroupingSegments = try container.decode(Bool.self, forKey: .createGroupingSegments)
    self.enableDefaultGroupHeaders = try container.decode(Bool.self, forKey: .enableDefaultGroupHeaders)
    if container.contains(.recipientReferencePasswordValue) {
        self.recipientReferencePasswordValue = try container.decode(String?.self, forKey: .recipientReferencePasswordValue)
    }
    if container.contains(.recipientReferencePasswordQualifier) {
        self.recipientReferencePasswordQualifier = try container.decode(String?.self, forKey: .recipientReferencePasswordQualifier)
    }
    if container.contains(.applicationReferenceId) {
        self.applicationReferenceId = try container.decode(String?.self, forKey: .applicationReferenceId)
    }
    if container.contains(.processingPriorityCode) {
        self.processingPriorityCode = try container.decode(String?.self, forKey: .processingPriorityCode)
    }
    self.interchangeControlNumberLowerBound = try container.decode(Int64.self, forKey: .interchangeControlNumberLowerBound)
    self.interchangeControlNumberUpperBound = try container.decode(Int64.self, forKey: .interchangeControlNumberUpperBound)
    self.rolloverInterchangeControlNumber = try container.decode(Bool.self, forKey: .rolloverInterchangeControlNumber)
    if container.contains(.interchangeControlNumberPrefix) {
        self.interchangeControlNumberPrefix = try container.decode(String?.self, forKey: .interchangeControlNumberPrefix)
    }
    if container.contains(.interchangeControlNumberSuffix) {
        self.interchangeControlNumberSuffix = try container.decode(String?.self, forKey: .interchangeControlNumberSuffix)
    }
    if container.contains(.senderReverseRoutingAddress) {
        self.senderReverseRoutingAddress = try container.decode(String?.self, forKey: .senderReverseRoutingAddress)
    }
    if container.contains(.receiverReverseRoutingAddress) {
        self.receiverReverseRoutingAddress = try container.decode(String?.self, forKey: .receiverReverseRoutingAddress)
    }
    if container.contains(.functionalGroupId) {
        self.functionalGroupId = try container.decode(String?.self, forKey: .functionalGroupId)
    }
    if container.contains(.groupControllingAgencyCode) {
        self.groupControllingAgencyCode = try container.decode(String?.self, forKey: .groupControllingAgencyCode)
    }
    if container.contains(.groupMessageVersion) {
        self.groupMessageVersion = try container.decode(String?.self, forKey: .groupMessageVersion)
    }
    if container.contains(.groupMessageRelease) {
        self.groupMessageRelease = try container.decode(String?.self, forKey: .groupMessageRelease)
    }
    self.groupControlNumberLowerBound = try container.decode(Int64.self, forKey: .groupControlNumberLowerBound)
    self.groupControlNumberUpperBound = try container.decode(Int64.self, forKey: .groupControlNumberUpperBound)
    self.rolloverGroupControlNumber = try container.decode(Bool.self, forKey: .rolloverGroupControlNumber)
    if container.contains(.groupControlNumberPrefix) {
        self.groupControlNumberPrefix = try container.decode(String?.self, forKey: .groupControlNumberPrefix)
    }
    if container.contains(.groupControlNumberSuffix) {
        self.groupControlNumberSuffix = try container.decode(String?.self, forKey: .groupControlNumberSuffix)
    }
    if container.contains(.groupApplicationReceiverQualifier) {
        self.groupApplicationReceiverQualifier = try container.decode(String?.self, forKey: .groupApplicationReceiverQualifier)
    }
    if container.contains(.groupApplicationReceiverId) {
        self.groupApplicationReceiverId = try container.decode(String?.self, forKey: .groupApplicationReceiverId)
    }
    if container.contains(.groupApplicationSenderQualifier) {
        self.groupApplicationSenderQualifier = try container.decode(String?.self, forKey: .groupApplicationSenderQualifier)
    }
    if container.contains(.groupApplicationSenderId) {
        self.groupApplicationSenderId = try container.decode(String?.self, forKey: .groupApplicationSenderId)
    }
    if container.contains(.groupApplicationPassword) {
        self.groupApplicationPassword = try container.decode(String?.self, forKey: .groupApplicationPassword)
    }
    self.overwriteExistingTransactionSetControlNumber = try container.decode(Bool.self, forKey: .overwriteExistingTransactionSetControlNumber)
    if container.contains(.transactionSetControlNumberPrefix) {
        self.transactionSetControlNumberPrefix = try container.decode(String?.self, forKey: .transactionSetControlNumberPrefix)
    }
    if container.contains(.transactionSetControlNumberSuffix) {
        self.transactionSetControlNumberSuffix = try container.decode(String?.self, forKey: .transactionSetControlNumberSuffix)
    }
    self.transactionSetControlNumberLowerBound = try container.decode(Int64.self, forKey: .transactionSetControlNumberLowerBound)
    self.transactionSetControlNumberUpperBound = try container.decode(Int64.self, forKey: .transactionSetControlNumberUpperBound)
    self.rolloverTransactionSetControlNumber = try container.decode(Bool.self, forKey: .rolloverTransactionSetControlNumber)
    self.isTestInterchange = try container.decode(Bool.self, forKey: .isTestInterchange)
    if container.contains(.senderInternalIdentification) {
        self.senderInternalIdentification = try container.decode(String?.self, forKey: .senderInternalIdentification)
    }
    if container.contains(.senderInternalSubIdentification) {
        self.senderInternalSubIdentification = try container.decode(String?.self, forKey: .senderInternalSubIdentification)
    }
    if container.contains(.receiverInternalIdentification) {
        self.receiverInternalIdentification = try container.decode(String?.self, forKey: .receiverInternalIdentification)
    }
    if container.contains(.receiverInternalSubIdentification) {
        self.receiverInternalSubIdentification = try container.decode(String?.self, forKey: .receiverInternalSubIdentification)
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
    if self.groupAssociationAssignedCode != nil {try container.encode(self.groupAssociationAssignedCode, forKey: .groupAssociationAssignedCode)}
    if self.communicationAgreementId != nil {try container.encode(self.communicationAgreementId, forKey: .communicationAgreementId)}
    try container.encode(self.applyDelimiterStringAdvice, forKey: .applyDelimiterStringAdvice)
    try container.encode(self.createGroupingSegments, forKey: .createGroupingSegments)
    try container.encode(self.enableDefaultGroupHeaders, forKey: .enableDefaultGroupHeaders)
    if self.recipientReferencePasswordValue != nil {try container.encode(self.recipientReferencePasswordValue, forKey: .recipientReferencePasswordValue)}
    if self.recipientReferencePasswordQualifier != nil {try container.encode(self.recipientReferencePasswordQualifier, forKey: .recipientReferencePasswordQualifier)}
    if self.applicationReferenceId != nil {try container.encode(self.applicationReferenceId, forKey: .applicationReferenceId)}
    if self.processingPriorityCode != nil {try container.encode(self.processingPriorityCode, forKey: .processingPriorityCode)}
    try container.encode(self.interchangeControlNumberLowerBound, forKey: .interchangeControlNumberLowerBound)
    try container.encode(self.interchangeControlNumberUpperBound, forKey: .interchangeControlNumberUpperBound)
    try container.encode(self.rolloverInterchangeControlNumber, forKey: .rolloverInterchangeControlNumber)
    if self.interchangeControlNumberPrefix != nil {try container.encode(self.interchangeControlNumberPrefix, forKey: .interchangeControlNumberPrefix)}
    if self.interchangeControlNumberSuffix != nil {try container.encode(self.interchangeControlNumberSuffix, forKey: .interchangeControlNumberSuffix)}
    if self.senderReverseRoutingAddress != nil {try container.encode(self.senderReverseRoutingAddress, forKey: .senderReverseRoutingAddress)}
    if self.receiverReverseRoutingAddress != nil {try container.encode(self.receiverReverseRoutingAddress, forKey: .receiverReverseRoutingAddress)}
    if self.functionalGroupId != nil {try container.encode(self.functionalGroupId, forKey: .functionalGroupId)}
    if self.groupControllingAgencyCode != nil {try container.encode(self.groupControllingAgencyCode, forKey: .groupControllingAgencyCode)}
    if self.groupMessageVersion != nil {try container.encode(self.groupMessageVersion, forKey: .groupMessageVersion)}
    if self.groupMessageRelease != nil {try container.encode(self.groupMessageRelease, forKey: .groupMessageRelease)}
    try container.encode(self.groupControlNumberLowerBound, forKey: .groupControlNumberLowerBound)
    try container.encode(self.groupControlNumberUpperBound, forKey: .groupControlNumberUpperBound)
    try container.encode(self.rolloverGroupControlNumber, forKey: .rolloverGroupControlNumber)
    if self.groupControlNumberPrefix != nil {try container.encode(self.groupControlNumberPrefix, forKey: .groupControlNumberPrefix)}
    if self.groupControlNumberSuffix != nil {try container.encode(self.groupControlNumberSuffix, forKey: .groupControlNumberSuffix)}
    if self.groupApplicationReceiverQualifier != nil {try container.encode(self.groupApplicationReceiverQualifier, forKey: .groupApplicationReceiverQualifier)}
    if self.groupApplicationReceiverId != nil {try container.encode(self.groupApplicationReceiverId, forKey: .groupApplicationReceiverId)}
    if self.groupApplicationSenderQualifier != nil {try container.encode(self.groupApplicationSenderQualifier, forKey: .groupApplicationSenderQualifier)}
    if self.groupApplicationSenderId != nil {try container.encode(self.groupApplicationSenderId, forKey: .groupApplicationSenderId)}
    if self.groupApplicationPassword != nil {try container.encode(self.groupApplicationPassword, forKey: .groupApplicationPassword)}
    try container.encode(self.overwriteExistingTransactionSetControlNumber, forKey: .overwriteExistingTransactionSetControlNumber)
    if self.transactionSetControlNumberPrefix != nil {try container.encode(self.transactionSetControlNumberPrefix, forKey: .transactionSetControlNumberPrefix)}
    if self.transactionSetControlNumberSuffix != nil {try container.encode(self.transactionSetControlNumberSuffix, forKey: .transactionSetControlNumberSuffix)}
    try container.encode(self.transactionSetControlNumberLowerBound, forKey: .transactionSetControlNumberLowerBound)
    try container.encode(self.transactionSetControlNumberUpperBound, forKey: .transactionSetControlNumberUpperBound)
    try container.encode(self.rolloverTransactionSetControlNumber, forKey: .rolloverTransactionSetControlNumber)
    try container.encode(self.isTestInterchange, forKey: .isTestInterchange)
    if self.senderInternalIdentification != nil {try container.encode(self.senderInternalIdentification, forKey: .senderInternalIdentification)}
    if self.senderInternalSubIdentification != nil {try container.encode(self.senderInternalSubIdentification, forKey: .senderInternalSubIdentification)}
    if self.receiverInternalIdentification != nil {try container.encode(self.receiverInternalIdentification, forKey: .receiverInternalIdentification)}
    if self.receiverInternalSubIdentification != nil {try container.encode(self.receiverInternalSubIdentification, forKey: .receiverInternalSubIdentification)}
  }
}

extension DataFactory {
  public static func createEdifactEnvelopeSettingsProtocol(applyDelimiterStringAdvice: Bool, createGroupingSegments: Bool, enableDefaultGroupHeaders: Bool, interchangeControlNumberLowerBound: Int64, interchangeControlNumberUpperBound: Int64, rolloverInterchangeControlNumber: Bool, groupControlNumberLowerBound: Int64, groupControlNumberUpperBound: Int64, rolloverGroupControlNumber: Bool, overwriteExistingTransactionSetControlNumber: Bool, transactionSetControlNumberLowerBound: Int64, transactionSetControlNumberUpperBound: Int64, rolloverTransactionSetControlNumber: Bool, isTestInterchange: Bool) -> EdifactEnvelopeSettingsProtocol {
    return EdifactEnvelopeSettingsData(applyDelimiterStringAdvice: applyDelimiterStringAdvice, createGroupingSegments: createGroupingSegments, enableDefaultGroupHeaders: enableDefaultGroupHeaders, interchangeControlNumberLowerBound: interchangeControlNumberLowerBound, interchangeControlNumberUpperBound: interchangeControlNumberUpperBound, rolloverInterchangeControlNumber: rolloverInterchangeControlNumber, groupControlNumberLowerBound: groupControlNumberLowerBound, groupControlNumberUpperBound: groupControlNumberUpperBound, rolloverGroupControlNumber: rolloverGroupControlNumber, overwriteExistingTransactionSetControlNumber: overwriteExistingTransactionSetControlNumber, transactionSetControlNumberLowerBound: transactionSetControlNumberLowerBound, transactionSetControlNumberUpperBound: transactionSetControlNumberUpperBound, rolloverTransactionSetControlNumber: rolloverTransactionSetControlNumber, isTestInterchange: isTestInterchange)
  }
}
