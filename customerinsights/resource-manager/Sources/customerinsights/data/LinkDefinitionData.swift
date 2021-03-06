// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct LinkDefinitionData : LinkDefinitionProtocol {
    public var tenantId: String?
    public var linkName: String?
    public var sourceEntityType: EntityTypeEnum
    public var targetEntityType: EntityTypeEnum
    public var sourceEntityTypeName: String
    public var targetEntityTypeName: String
    public var displayName: [String:String]?
    public var description: [String:String]?
    public var mappings: [TypePropertiesMappingProtocol?]?
    public var participantPropertyReferences: [ParticipantPropertyReferenceProtocol]
    public var provisioningState: ProvisioningStatesEnum?
    public var referenceOnly: Bool?
    public var operationType: InstanceOperationTypeEnum?

        enum CodingKeys: String, CodingKey {case tenantId = "tenantId"
        case linkName = "linkName"
        case sourceEntityType = "sourceEntityType"
        case targetEntityType = "targetEntityType"
        case sourceEntityTypeName = "sourceEntityTypeName"
        case targetEntityTypeName = "targetEntityTypeName"
        case displayName = "displayName"
        case description = "description"
        case mappings = "mappings"
        case participantPropertyReferences = "participantPropertyReferences"
        case provisioningState = "provisioningState"
        case referenceOnly = "referenceOnly"
        case operationType = "operationType"
        }

  public init(sourceEntityType: EntityTypeEnum, targetEntityType: EntityTypeEnum, sourceEntityTypeName: String, targetEntityTypeName: String, participantPropertyReferences: [ParticipantPropertyReferenceProtocol])  {
    self.sourceEntityType = sourceEntityType
    self.targetEntityType = targetEntityType
    self.sourceEntityTypeName = sourceEntityTypeName
    self.targetEntityTypeName = targetEntityTypeName
    self.participantPropertyReferences = participantPropertyReferences
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.tenantId) {
        self.tenantId = try container.decode(String?.self, forKey: .tenantId)
    }
    if container.contains(.linkName) {
        self.linkName = try container.decode(String?.self, forKey: .linkName)
    }
    self.sourceEntityType = try container.decode(EntityTypeEnum.self, forKey: .sourceEntityType)
    self.targetEntityType = try container.decode(EntityTypeEnum.self, forKey: .targetEntityType)
    self.sourceEntityTypeName = try container.decode(String.self, forKey: .sourceEntityTypeName)
    self.targetEntityTypeName = try container.decode(String.self, forKey: .targetEntityTypeName)
    if container.contains(.displayName) {
        self.displayName = try container.decode([String:String]?.self, forKey: .displayName)
    }
    if container.contains(.description) {
        self.description = try container.decode([String:String]?.self, forKey: .description)
    }
    if container.contains(.mappings) {
        self.mappings = try container.decode([TypePropertiesMappingData?]?.self, forKey: .mappings)
    }
    self.participantPropertyReferences = try container.decode([ParticipantPropertyReferenceData].self, forKey: .participantPropertyReferences)
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(ProvisioningStatesEnum?.self, forKey: .provisioningState)
    }
    if container.contains(.referenceOnly) {
        self.referenceOnly = try container.decode(Bool?.self, forKey: .referenceOnly)
    }
    if container.contains(.operationType) {
        self.operationType = try container.decode(InstanceOperationTypeEnum?.self, forKey: .operationType)
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
    if self.tenantId != nil {try container.encode(self.tenantId, forKey: .tenantId)}
    if self.linkName != nil {try container.encode(self.linkName, forKey: .linkName)}
    try container.encode(self.sourceEntityType, forKey: .sourceEntityType)
    try container.encode(self.targetEntityType, forKey: .targetEntityType)
    try container.encode(self.sourceEntityTypeName, forKey: .sourceEntityTypeName)
    try container.encode(self.targetEntityTypeName, forKey: .targetEntityTypeName)
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.mappings != nil {try container.encode(self.mappings as! [TypePropertiesMappingData?]?, forKey: .mappings)}
    try container.encode(self.participantPropertyReferences as! [ParticipantPropertyReferenceData], forKey: .participantPropertyReferences)
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.referenceOnly != nil {try container.encode(self.referenceOnly, forKey: .referenceOnly)}
    if self.operationType != nil {try container.encode(self.operationType, forKey: .operationType)}
  }
}

extension DataFactory {
  public static func createLinkDefinitionProtocol(sourceEntityType: EntityTypeEnum, targetEntityType: EntityTypeEnum, sourceEntityTypeName: String, targetEntityTypeName: String, participantPropertyReferences: [ParticipantPropertyReferenceProtocol]) -> LinkDefinitionProtocol {
    return LinkDefinitionData(sourceEntityType: sourceEntityType, targetEntityType: targetEntityType, sourceEntityTypeName: sourceEntityTypeName, targetEntityTypeName: targetEntityTypeName, participantPropertyReferences: participantPropertyReferences)
  }
}
