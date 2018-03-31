// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct X12AcknowledgementSettingsData : X12AcknowledgementSettingsProtocol {
    public var needTechnicalAcknowledgement: Bool
    public var batchTechnicalAcknowledgements: Bool
    public var needFunctionalAcknowledgement: Bool
    public var functionalAcknowledgementVersion: String?
    public var batchFunctionalAcknowledgements: Bool
    public var needImplementationAcknowledgement: Bool
    public var implementationAcknowledgementVersion: String?
    public var batchImplementationAcknowledgements: Bool
    public var needLoopForValidMessages: Bool
    public var sendSynchronousAcknowledgement: Bool
    public var acknowledgementControlNumberPrefix: String?
    public var acknowledgementControlNumberSuffix: String?
    public var acknowledgementControlNumberLowerBound: Int32
    public var acknowledgementControlNumberUpperBound: Int32
    public var rolloverAcknowledgementControlNumber: Bool

        enum CodingKeys: String, CodingKey {case needTechnicalAcknowledgement = "needTechnicalAcknowledgement"
        case batchTechnicalAcknowledgements = "batchTechnicalAcknowledgements"
        case needFunctionalAcknowledgement = "needFunctionalAcknowledgement"
        case functionalAcknowledgementVersion = "functionalAcknowledgementVersion"
        case batchFunctionalAcknowledgements = "batchFunctionalAcknowledgements"
        case needImplementationAcknowledgement = "needImplementationAcknowledgement"
        case implementationAcknowledgementVersion = "implementationAcknowledgementVersion"
        case batchImplementationAcknowledgements = "batchImplementationAcknowledgements"
        case needLoopForValidMessages = "needLoopForValidMessages"
        case sendSynchronousAcknowledgement = "sendSynchronousAcknowledgement"
        case acknowledgementControlNumberPrefix = "acknowledgementControlNumberPrefix"
        case acknowledgementControlNumberSuffix = "acknowledgementControlNumberSuffix"
        case acknowledgementControlNumberLowerBound = "acknowledgementControlNumberLowerBound"
        case acknowledgementControlNumberUpperBound = "acknowledgementControlNumberUpperBound"
        case rolloverAcknowledgementControlNumber = "rolloverAcknowledgementControlNumber"
        }

  public init(needTechnicalAcknowledgement: Bool, batchTechnicalAcknowledgements: Bool, needFunctionalAcknowledgement: Bool, batchFunctionalAcknowledgements: Bool, needImplementationAcknowledgement: Bool, batchImplementationAcknowledgements: Bool, needLoopForValidMessages: Bool, sendSynchronousAcknowledgement: Bool, acknowledgementControlNumberLowerBound: Int32, acknowledgementControlNumberUpperBound: Int32, rolloverAcknowledgementControlNumber: Bool)  {
    self.needTechnicalAcknowledgement = needTechnicalAcknowledgement
    self.batchTechnicalAcknowledgements = batchTechnicalAcknowledgements
    self.needFunctionalAcknowledgement = needFunctionalAcknowledgement
    self.batchFunctionalAcknowledgements = batchFunctionalAcknowledgements
    self.needImplementationAcknowledgement = needImplementationAcknowledgement
    self.batchImplementationAcknowledgements = batchImplementationAcknowledgements
    self.needLoopForValidMessages = needLoopForValidMessages
    self.sendSynchronousAcknowledgement = sendSynchronousAcknowledgement
    self.acknowledgementControlNumberLowerBound = acknowledgementControlNumberLowerBound
    self.acknowledgementControlNumberUpperBound = acknowledgementControlNumberUpperBound
    self.rolloverAcknowledgementControlNumber = rolloverAcknowledgementControlNumber
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.needTechnicalAcknowledgement = try container.decode(Bool.self, forKey: .needTechnicalAcknowledgement)
    self.batchTechnicalAcknowledgements = try container.decode(Bool.self, forKey: .batchTechnicalAcknowledgements)
    self.needFunctionalAcknowledgement = try container.decode(Bool.self, forKey: .needFunctionalAcknowledgement)
    if container.contains(.functionalAcknowledgementVersion) {
        self.functionalAcknowledgementVersion = try container.decode(String?.self, forKey: .functionalAcknowledgementVersion)
    }
    self.batchFunctionalAcknowledgements = try container.decode(Bool.self, forKey: .batchFunctionalAcknowledgements)
    self.needImplementationAcknowledgement = try container.decode(Bool.self, forKey: .needImplementationAcknowledgement)
    if container.contains(.implementationAcknowledgementVersion) {
        self.implementationAcknowledgementVersion = try container.decode(String?.self, forKey: .implementationAcknowledgementVersion)
    }
    self.batchImplementationAcknowledgements = try container.decode(Bool.self, forKey: .batchImplementationAcknowledgements)
    self.needLoopForValidMessages = try container.decode(Bool.self, forKey: .needLoopForValidMessages)
    self.sendSynchronousAcknowledgement = try container.decode(Bool.self, forKey: .sendSynchronousAcknowledgement)
    if container.contains(.acknowledgementControlNumberPrefix) {
        self.acknowledgementControlNumberPrefix = try container.decode(String?.self, forKey: .acknowledgementControlNumberPrefix)
    }
    if container.contains(.acknowledgementControlNumberSuffix) {
        self.acknowledgementControlNumberSuffix = try container.decode(String?.self, forKey: .acknowledgementControlNumberSuffix)
    }
    self.acknowledgementControlNumberLowerBound = try container.decode(Int32.self, forKey: .acknowledgementControlNumberLowerBound)
    self.acknowledgementControlNumberUpperBound = try container.decode(Int32.self, forKey: .acknowledgementControlNumberUpperBound)
    self.rolloverAcknowledgementControlNumber = try container.decode(Bool.self, forKey: .rolloverAcknowledgementControlNumber)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.needTechnicalAcknowledgement, forKey: .needTechnicalAcknowledgement)
    try container.encode(self.batchTechnicalAcknowledgements, forKey: .batchTechnicalAcknowledgements)
    try container.encode(self.needFunctionalAcknowledgement, forKey: .needFunctionalAcknowledgement)
    if self.functionalAcknowledgementVersion != nil {try container.encode(self.functionalAcknowledgementVersion, forKey: .functionalAcknowledgementVersion)}
    try container.encode(self.batchFunctionalAcknowledgements, forKey: .batchFunctionalAcknowledgements)
    try container.encode(self.needImplementationAcknowledgement, forKey: .needImplementationAcknowledgement)
    if self.implementationAcknowledgementVersion != nil {try container.encode(self.implementationAcknowledgementVersion, forKey: .implementationAcknowledgementVersion)}
    try container.encode(self.batchImplementationAcknowledgements, forKey: .batchImplementationAcknowledgements)
    try container.encode(self.needLoopForValidMessages, forKey: .needLoopForValidMessages)
    try container.encode(self.sendSynchronousAcknowledgement, forKey: .sendSynchronousAcknowledgement)
    if self.acknowledgementControlNumberPrefix != nil {try container.encode(self.acknowledgementControlNumberPrefix, forKey: .acknowledgementControlNumberPrefix)}
    if self.acknowledgementControlNumberSuffix != nil {try container.encode(self.acknowledgementControlNumberSuffix, forKey: .acknowledgementControlNumberSuffix)}
    try container.encode(self.acknowledgementControlNumberLowerBound, forKey: .acknowledgementControlNumberLowerBound)
    try container.encode(self.acknowledgementControlNumberUpperBound, forKey: .acknowledgementControlNumberUpperBound)
    try container.encode(self.rolloverAcknowledgementControlNumber, forKey: .rolloverAcknowledgementControlNumber)
  }
}

extension DataFactory {
  public static func createX12AcknowledgementSettingsProtocol(needTechnicalAcknowledgement: Bool, batchTechnicalAcknowledgements: Bool, needFunctionalAcknowledgement: Bool, batchFunctionalAcknowledgements: Bool, needImplementationAcknowledgement: Bool, batchImplementationAcknowledgements: Bool, needLoopForValidMessages: Bool, sendSynchronousAcknowledgement: Bool, acknowledgementControlNumberLowerBound: Int32, acknowledgementControlNumberUpperBound: Int32, rolloverAcknowledgementControlNumber: Bool) -> X12AcknowledgementSettingsProtocol {
    return X12AcknowledgementSettingsData(needTechnicalAcknowledgement: needTechnicalAcknowledgement, batchTechnicalAcknowledgements: batchTechnicalAcknowledgements, needFunctionalAcknowledgement: needFunctionalAcknowledgement, batchFunctionalAcknowledgements: batchFunctionalAcknowledgements, needImplementationAcknowledgement: needImplementationAcknowledgement, batchImplementationAcknowledgements: batchImplementationAcknowledgements, needLoopForValidMessages: needLoopForValidMessages, sendSynchronousAcknowledgement: sendSynchronousAcknowledgement, acknowledgementControlNumberLowerBound: acknowledgementControlNumberLowerBound, acknowledgementControlNumberUpperBound: acknowledgementControlNumberUpperBound, rolloverAcknowledgementControlNumber: rolloverAcknowledgementControlNumber)
  }
}
