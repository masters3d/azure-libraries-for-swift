// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EdifactDelimiterOverrideData : EdifactDelimiterOverrideProtocol {
    public var messageId: String?
    public var messageVersion: String?
    public var messageRelease: String?
    public var dataElementSeparator: Int32
    public var componentSeparator: Int32
    public var segmentTerminator: Int32
    public var repetitionSeparator: Int32
    public var segmentTerminatorSuffix: SegmentTerminatorSuffixEnum
    public var decimalPointIndicator: EdifactDecimalIndicatorEnum
    public var releaseIndicator: Int32
    public var messageAssociationAssignedCode: String?
    public var targetNamespace: String?

        enum CodingKeys: String, CodingKey {case messageId = "messageId"
        case messageVersion = "messageVersion"
        case messageRelease = "messageRelease"
        case dataElementSeparator = "dataElementSeparator"
        case componentSeparator = "componentSeparator"
        case segmentTerminator = "segmentTerminator"
        case repetitionSeparator = "repetitionSeparator"
        case segmentTerminatorSuffix = "segmentTerminatorSuffix"
        case decimalPointIndicator = "decimalPointIndicator"
        case releaseIndicator = "releaseIndicator"
        case messageAssociationAssignedCode = "messageAssociationAssignedCode"
        case targetNamespace = "targetNamespace"
        }

  public init(dataElementSeparator: Int32, componentSeparator: Int32, segmentTerminator: Int32, repetitionSeparator: Int32, segmentTerminatorSuffix: SegmentTerminatorSuffixEnum, decimalPointIndicator: EdifactDecimalIndicatorEnum, releaseIndicator: Int32) {
    self.dataElementSeparator = dataElementSeparator
    self.componentSeparator = componentSeparator
    self.segmentTerminator = segmentTerminator
    self.repetitionSeparator = repetitionSeparator
    self.segmentTerminatorSuffix = segmentTerminatorSuffix
    self.decimalPointIndicator = decimalPointIndicator
    self.releaseIndicator = releaseIndicator
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
    self.dataElementSeparator = try container.decode(Int32.self, forKey: .dataElementSeparator)
    self.componentSeparator = try container.decode(Int32.self, forKey: .componentSeparator)
    self.segmentTerminator = try container.decode(Int32.self, forKey: .segmentTerminator)
    self.repetitionSeparator = try container.decode(Int32.self, forKey: .repetitionSeparator)
    self.segmentTerminatorSuffix = try container.decode(SegmentTerminatorSuffixEnum.self, forKey: .segmentTerminatorSuffix)
    self.decimalPointIndicator = try container.decode(EdifactDecimalIndicatorEnum.self, forKey: .decimalPointIndicator)
    self.releaseIndicator = try container.decode(Int32.self, forKey: .releaseIndicator)
    if container.contains(.messageAssociationAssignedCode) {
        self.messageAssociationAssignedCode = try container.decode(String?.self, forKey: .messageAssociationAssignedCode)
    }
    if container.contains(.targetNamespace) {
        self.targetNamespace = try container.decode(String?.self, forKey: .targetNamespace)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.messageId != nil { try container.encode(self.messageId, forKey: .messageId) }
    if self.messageVersion != nil { try container.encode(self.messageVersion, forKey: .messageVersion) }
    if self.messageRelease != nil { try container.encode(self.messageRelease, forKey: .messageRelease) }
    try container.encode(self.dataElementSeparator, forKey: .dataElementSeparator)
    try container.encode(self.componentSeparator, forKey: .componentSeparator)
    try container.encode(self.segmentTerminator, forKey: .segmentTerminator)
    try container.encode(self.repetitionSeparator, forKey: .repetitionSeparator)
    try container.encode(self.segmentTerminatorSuffix, forKey: .segmentTerminatorSuffix)
    try container.encode(self.decimalPointIndicator, forKey: .decimalPointIndicator)
    try container.encode(self.releaseIndicator, forKey: .releaseIndicator)
    if self.messageAssociationAssignedCode != nil { try container.encode(self.messageAssociationAssignedCode, forKey: .messageAssociationAssignedCode) }
    if self.targetNamespace != nil { try container.encode(self.targetNamespace, forKey: .targetNamespace) }
  }
}

extension DataFactory {
  public static func createEdifactDelimiterOverrideProtocol(dataElementSeparator: Int32, componentSeparator: Int32, segmentTerminator: Int32, repetitionSeparator: Int32, segmentTerminatorSuffix: SegmentTerminatorSuffixEnum, decimalPointIndicator: EdifactDecimalIndicatorEnum, releaseIndicator: Int32) -> EdifactDelimiterOverrideProtocol {
    return EdifactDelimiterOverrideData(dataElementSeparator: dataElementSeparator, componentSeparator: componentSeparator, segmentTerminator: segmentTerminator, repetitionSeparator: repetitionSeparator, segmentTerminatorSuffix: segmentTerminatorSuffix, decimalPointIndicator: decimalPointIndicator, releaseIndicator: releaseIndicator)
  }
}
