// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EdifactEnvelopeSettingsProtocol is the Edifact agreement envelope settings.
public protocol EdifactEnvelopeSettingsProtocol : Codable {
     var groupAssociationAssignedCode: String? { get set }
     var communicationAgreementId: String? { get set }
     var applyDelimiterStringAdvice: Bool { get set }
     var createGroupingSegments: Bool { get set }
     var enableDefaultGroupHeaders: Bool { get set }
     var recipientReferencePasswordValue: String? { get set }
     var recipientReferencePasswordQualifier: String? { get set }
     var applicationReferenceId: String? { get set }
     var processingPriorityCode: String? { get set }
     var interchangeControlNumberLowerBound: Int64 { get set }
     var interchangeControlNumberUpperBound: Int64 { get set }
     var rolloverInterchangeControlNumber: Bool { get set }
     var interchangeControlNumberPrefix: String? { get set }
     var interchangeControlNumberSuffix: String? { get set }
     var senderReverseRoutingAddress: String? { get set }
     var receiverReverseRoutingAddress: String? { get set }
     var functionalGroupId: String? { get set }
     var groupControllingAgencyCode: String? { get set }
     var groupMessageVersion: String? { get set }
     var groupMessageRelease: String? { get set }
     var groupControlNumberLowerBound: Int64 { get set }
     var groupControlNumberUpperBound: Int64 { get set }
     var rolloverGroupControlNumber: Bool { get set }
     var groupControlNumberPrefix: String? { get set }
     var groupControlNumberSuffix: String? { get set }
     var groupApplicationReceiverQualifier: String? { get set }
     var groupApplicationReceiverId: String? { get set }
     var groupApplicationSenderQualifier: String? { get set }
     var groupApplicationSenderId: String? { get set }
     var groupApplicationPassword: String? { get set }
     var overwriteExistingTransactionSetControlNumber: Bool { get set }
     var transactionSetControlNumberPrefix: String? { get set }
     var transactionSetControlNumberSuffix: String? { get set }
     var transactionSetControlNumberLowerBound: Int64 { get set }
     var transactionSetControlNumberUpperBound: Int64 { get set }
     var rolloverTransactionSetControlNumber: Bool { get set }
     var isTestInterchange: Bool { get set }
     var senderInternalIdentification: String? { get set }
     var senderInternalSubIdentification: String? { get set }
     var receiverInternalIdentification: String? { get set }
     var receiverInternalSubIdentification: String? { get set }
}
