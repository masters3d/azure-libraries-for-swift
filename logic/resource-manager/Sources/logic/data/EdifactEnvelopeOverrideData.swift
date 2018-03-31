// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EdifactEnvelopeOverrideData : EdifactEnvelopeOverrideProtocol {
    public var messageId: String?
    public var messageVersion: String?
    public var messageRelease: String?
    public var messageAssociationAssignedCode: String?
    public var targetNamespace: String?
    public var functionalGroupId: String?
    public var senderApplicationQualifier: String?
    public var senderApplicationId: String?
    public var receiverApplicationQualifier: String?
    public var receiverApplicationId: String?
    public var controllingAgencyCode: String?
    public var groupHeaderMessageVersion: String?
    public var groupHeaderMessageRelease: String?
    public var associationAssignedCode: String?
    public var applicationPassword: String?

        enum CodingKeys: String, CodingKey {case messageId = "messageId"
        case messageVersion = "messageVersion"
        case messageRelease = "messageRelease"
        case messageAssociationAssignedCode = "messageAssociationAssignedCode"
        case targetNamespace = "targetNamespace"
        case functionalGroupId = "functionalGroupId"
        case senderApplicationQualifier = "senderApplicationQualifier"
        case senderApplicationId = "senderApplicationId"
        case receiverApplicationQualifier = "receiverApplicationQualifier"
        case receiverApplicationId = "receiverApplicationId"
        case controllingAgencyCode = "controllingAgencyCode"
        case groupHeaderMessageVersion = "groupHeaderMessageVersion"
        case groupHeaderMessageRelease = "groupHeaderMessageRelease"
        case associationAssignedCode = "associationAssignedCode"
        case applicationPassword = "applicationPassword"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.messageId) {
        self.messageId = try container.decode(String?.self, forKey: .messageId)
    }
    if container.contains(.messageVersion) {
        self.messageVersion = try container.decode(String?.self, forKey: .messageVersion)
    }
    if container.contains(.messageRelease) {
        self.messageRelease = try container.decode(String?.self, forKey: .messageRelease)
    }
    if container.contains(.messageAssociationAssignedCode) {
        self.messageAssociationAssignedCode = try container.decode(String?.self, forKey: .messageAssociationAssignedCode)
    }
    if container.contains(.targetNamespace) {
        self.targetNamespace = try container.decode(String?.self, forKey: .targetNamespace)
    }
    if container.contains(.functionalGroupId) {
        self.functionalGroupId = try container.decode(String?.self, forKey: .functionalGroupId)
    }
    if container.contains(.senderApplicationQualifier) {
        self.senderApplicationQualifier = try container.decode(String?.self, forKey: .senderApplicationQualifier)
    }
    if container.contains(.senderApplicationId) {
        self.senderApplicationId = try container.decode(String?.self, forKey: .senderApplicationId)
    }
    if container.contains(.receiverApplicationQualifier) {
        self.receiverApplicationQualifier = try container.decode(String?.self, forKey: .receiverApplicationQualifier)
    }
    if container.contains(.receiverApplicationId) {
        self.receiverApplicationId = try container.decode(String?.self, forKey: .receiverApplicationId)
    }
    if container.contains(.controllingAgencyCode) {
        self.controllingAgencyCode = try container.decode(String?.self, forKey: .controllingAgencyCode)
    }
    if container.contains(.groupHeaderMessageVersion) {
        self.groupHeaderMessageVersion = try container.decode(String?.self, forKey: .groupHeaderMessageVersion)
    }
    if container.contains(.groupHeaderMessageRelease) {
        self.groupHeaderMessageRelease = try container.decode(String?.self, forKey: .groupHeaderMessageRelease)
    }
    if container.contains(.associationAssignedCode) {
        self.associationAssignedCode = try container.decode(String?.self, forKey: .associationAssignedCode)
    }
    if container.contains(.applicationPassword) {
        self.applicationPassword = try container.decode(String?.self, forKey: .applicationPassword)
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
    if self.messageId != nil {try container.encode(self.messageId, forKey: .messageId)}
    if self.messageVersion != nil {try container.encode(self.messageVersion, forKey: .messageVersion)}
    if self.messageRelease != nil {try container.encode(self.messageRelease, forKey: .messageRelease)}
    if self.messageAssociationAssignedCode != nil {try container.encode(self.messageAssociationAssignedCode, forKey: .messageAssociationAssignedCode)}
    if self.targetNamespace != nil {try container.encode(self.targetNamespace, forKey: .targetNamespace)}
    if self.functionalGroupId != nil {try container.encode(self.functionalGroupId, forKey: .functionalGroupId)}
    if self.senderApplicationQualifier != nil {try container.encode(self.senderApplicationQualifier, forKey: .senderApplicationQualifier)}
    if self.senderApplicationId != nil {try container.encode(self.senderApplicationId, forKey: .senderApplicationId)}
    if self.receiverApplicationQualifier != nil {try container.encode(self.receiverApplicationQualifier, forKey: .receiverApplicationQualifier)}
    if self.receiverApplicationId != nil {try container.encode(self.receiverApplicationId, forKey: .receiverApplicationId)}
    if self.controllingAgencyCode != nil {try container.encode(self.controllingAgencyCode, forKey: .controllingAgencyCode)}
    if self.groupHeaderMessageVersion != nil {try container.encode(self.groupHeaderMessageVersion, forKey: .groupHeaderMessageVersion)}
    if self.groupHeaderMessageRelease != nil {try container.encode(self.groupHeaderMessageRelease, forKey: .groupHeaderMessageRelease)}
    if self.associationAssignedCode != nil {try container.encode(self.associationAssignedCode, forKey: .associationAssignedCode)}
    if self.applicationPassword != nil {try container.encode(self.applicationPassword, forKey: .applicationPassword)}
  }
}

extension DataFactory {
  public static func createEdifactEnvelopeOverrideProtocol() -> EdifactEnvelopeOverrideProtocol {
    return EdifactEnvelopeOverrideData()
  }
}
