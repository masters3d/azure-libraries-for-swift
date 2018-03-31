// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RelationshipDefinitionData : RelationshipDefinitionProtocol {
    public var cardinality: CardinalityTypesEnum?
    public var displayName: [String:String]?
    public var description: [String:String]?
    public var expiryDateTimeUtc: Date?
    public var fields: [PropertyDefinitionProtocol?]?
    public var lookupMappings: [RelationshipTypeMappingProtocol?]?
    public var profileType: String
    public var provisioningState: ProvisioningStatesEnum?
    public var relationshipName: String?
    public var relatedProfileType: String
    public var relationshipGuidId: String?
    public var tenantId: String?

        enum CodingKeys: String, CodingKey {case cardinality = "cardinality"
        case displayName = "displayName"
        case description = "description"
        case expiryDateTimeUtc = "expiryDateTimeUtc"
        case fields = "fields"
        case lookupMappings = "lookupMappings"
        case profileType = "profileType"
        case provisioningState = "provisioningState"
        case relationshipName = "relationshipName"
        case relatedProfileType = "relatedProfileType"
        case relationshipGuidId = "relationshipGuidId"
        case tenantId = "tenantId"
        }

  public init(profileType: String, relatedProfileType: String)  {
    self.profileType = profileType
    self.relatedProfileType = relatedProfileType
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.cardinality) {
        self.cardinality = try container.decode(CardinalityTypesEnum?.self, forKey: .cardinality)
    }
    if container.contains(.displayName) {
        self.displayName = try container.decode([String:String]?.self, forKey: .displayName)
    }
    if container.contains(.description) {
        self.description = try container.decode([String:String]?.self, forKey: .description)
    }
    if container.contains(.expiryDateTimeUtc) {
        self.expiryDateTimeUtc = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .expiryDateTimeUtc)), format: .dateTime)
    }
    if container.contains(.fields) {
        self.fields = try container.decode([PropertyDefinitionData?]?.self, forKey: .fields)
    }
    if container.contains(.lookupMappings) {
        self.lookupMappings = try container.decode([RelationshipTypeMappingData?]?.self, forKey: .lookupMappings)
    }
    self.profileType = try container.decode(String.self, forKey: .profileType)
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(ProvisioningStatesEnum?.self, forKey: .provisioningState)
    }
    if container.contains(.relationshipName) {
        self.relationshipName = try container.decode(String?.self, forKey: .relationshipName)
    }
    self.relatedProfileType = try container.decode(String.self, forKey: .relatedProfileType)
    if container.contains(.relationshipGuidId) {
        self.relationshipGuidId = try container.decode(String?.self, forKey: .relationshipGuidId)
    }
    if container.contains(.tenantId) {
        self.tenantId = try container.decode(String?.self, forKey: .tenantId)
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
    if self.cardinality != nil {try container.encode(self.cardinality, forKey: .cardinality)}
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.expiryDateTimeUtc != nil {
        try container.encode(DateConverter.toString(date: self.expiryDateTimeUtc!, format: .dateTime), forKey: .expiryDateTimeUtc)
    }
    if self.fields != nil {try container.encode(self.fields as! [PropertyDefinitionData?]?, forKey: .fields)}
    if self.lookupMappings != nil {try container.encode(self.lookupMappings as! [RelationshipTypeMappingData?]?, forKey: .lookupMappings)}
    try container.encode(self.profileType, forKey: .profileType)
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.relationshipName != nil {try container.encode(self.relationshipName, forKey: .relationshipName)}
    try container.encode(self.relatedProfileType, forKey: .relatedProfileType)
    if self.relationshipGuidId != nil {try container.encode(self.relationshipGuidId, forKey: .relationshipGuidId)}
    if self.tenantId != nil {try container.encode(self.tenantId, forKey: .tenantId)}
  }
}

extension DataFactory {
  public static func createRelationshipDefinitionProtocol(profileType: String, relatedProfileType: String) -> RelationshipDefinitionProtocol {
    return RelationshipDefinitionData(profileType: profileType, relatedProfileType: relatedProfileType)
  }
}
