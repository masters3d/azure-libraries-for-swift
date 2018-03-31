// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InteractionTypeDefinitionData : InteractionTypeDefinitionProtocol, EntityTypeDefinitionProtocol, MetadataDefinitionBaseProtocol {
    public var attributes: [String:[String]?]?
    public var description: [String:String]?
    public var displayName: [String:String]?
    public var localizedAttributes: [String:[String:String]?]?
    public var smallImage: String?
    public var mediumImage: String?
    public var largeImage: String?
    public var apiEntitySetName: String?
    public var entityType: EntityTypesEnum?
    public var fields: [PropertyDefinitionProtocol?]?
    public var instancesCount: Int32?
    public var lastChangedUtc: Date?
    public var provisioningState: ProvisioningStatesEnum?
    public var schemaItemTypeLink: String?
    public var tenantId: String?
    public var timestampFieldName: String?
    public var typeName: String?
    public var idPropertyNames: [String]?
    public var participantProfiles: [ParticipantProtocol?]?
    public var primaryParticipantProfilePropertyName: String?
    public var dataSourcePrecedenceRules: [DataSourcePrecedenceProtocol?]?
    public var defaultDataSource: DataSourceProtocol?
    public var isActivity: Bool?

        enum CodingKeys: String, CodingKey {case attributes = "attributes"
        case description = "description"
        case displayName = "displayName"
        case localizedAttributes = "localizedAttributes"
        case smallImage = "smallImage"
        case mediumImage = "mediumImage"
        case largeImage = "largeImage"
        case apiEntitySetName = "apiEntitySetName"
        case entityType = "entityType"
        case fields = "fields"
        case instancesCount = "instancesCount"
        case lastChangedUtc = "lastChangedUtc"
        case provisioningState = "provisioningState"
        case schemaItemTypeLink = "schemaItemTypeLink"
        case tenantId = "tenantId"
        case timestampFieldName = "timestampFieldName"
        case typeName = "typeName"
        case idPropertyNames = "idPropertyNames"
        case participantProfiles = "participantProfiles"
        case primaryParticipantProfilePropertyName = "primaryParticipantProfilePropertyName"
        case dataSourcePrecedenceRules = "dataSourcePrecedenceRules"
        case defaultDataSource = "defaultDataSource"
        case isActivity = "isActivity"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.attributes) {
        self.attributes = try container.decode([String:[String]?]?.self, forKey: .attributes)
    }
    if container.contains(.description) {
        self.description = try container.decode([String:String]?.self, forKey: .description)
    }
    if container.contains(.displayName) {
        self.displayName = try container.decode([String:String]?.self, forKey: .displayName)
    }
    if container.contains(.localizedAttributes) {
        self.localizedAttributes = try container.decode([String:[String:String]?]?.self, forKey: .localizedAttributes)
    }
    if container.contains(.smallImage) {
        self.smallImage = try container.decode(String?.self, forKey: .smallImage)
    }
    if container.contains(.mediumImage) {
        self.mediumImage = try container.decode(String?.self, forKey: .mediumImage)
    }
    if container.contains(.largeImage) {
        self.largeImage = try container.decode(String?.self, forKey: .largeImage)
    }
    if container.contains(.apiEntitySetName) {
        self.apiEntitySetName = try container.decode(String?.self, forKey: .apiEntitySetName)
    }
    if container.contains(.entityType) {
        self.entityType = try container.decode(EntityTypesEnum?.self, forKey: .entityType)
    }
    if container.contains(.fields) {
        self.fields = try container.decode([PropertyDefinitionData?]?.self, forKey: .fields)
    }
    if container.contains(.instancesCount) {
        self.instancesCount = try container.decode(Int32?.self, forKey: .instancesCount)
    }
    if container.contains(.lastChangedUtc) {
        self.lastChangedUtc = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastChangedUtc)), format: .dateTime)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(ProvisioningStatesEnum?.self, forKey: .provisioningState)
    }
    if container.contains(.schemaItemTypeLink) {
        self.schemaItemTypeLink = try container.decode(String?.self, forKey: .schemaItemTypeLink)
    }
    if container.contains(.tenantId) {
        self.tenantId = try container.decode(String?.self, forKey: .tenantId)
    }
    if container.contains(.timestampFieldName) {
        self.timestampFieldName = try container.decode(String?.self, forKey: .timestampFieldName)
    }
    if container.contains(.typeName) {
        self.typeName = try container.decode(String?.self, forKey: .typeName)
    }
    if container.contains(.idPropertyNames) {
        self.idPropertyNames = try container.decode([String]?.self, forKey: .idPropertyNames)
    }
    if container.contains(.participantProfiles) {
        self.participantProfiles = try container.decode([ParticipantData?]?.self, forKey: .participantProfiles)
    }
    if container.contains(.primaryParticipantProfilePropertyName) {
        self.primaryParticipantProfilePropertyName = try container.decode(String?.self, forKey: .primaryParticipantProfilePropertyName)
    }
    if container.contains(.dataSourcePrecedenceRules) {
        self.dataSourcePrecedenceRules = try container.decode([DataSourcePrecedenceData?]?.self, forKey: .dataSourcePrecedenceRules)
    }
    if container.contains(.defaultDataSource) {
        self.defaultDataSource = try container.decode(DataSourceData?.self, forKey: .defaultDataSource)
    }
    if container.contains(.isActivity) {
        self.isActivity = try container.decode(Bool?.self, forKey: .isActivity)
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
    if self.attributes != nil {try container.encode(self.attributes, forKey: .attributes)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    if self.localizedAttributes != nil {try container.encode(self.localizedAttributes, forKey: .localizedAttributes)}
    if self.smallImage != nil {try container.encode(self.smallImage, forKey: .smallImage)}
    if self.mediumImage != nil {try container.encode(self.mediumImage, forKey: .mediumImage)}
    if self.largeImage != nil {try container.encode(self.largeImage, forKey: .largeImage)}
    if self.apiEntitySetName != nil {try container.encode(self.apiEntitySetName, forKey: .apiEntitySetName)}
    if self.entityType != nil {try container.encode(self.entityType, forKey: .entityType)}
    if self.fields != nil {try container.encode(self.fields as! [PropertyDefinitionData?]?, forKey: .fields)}
    if self.instancesCount != nil {try container.encode(self.instancesCount, forKey: .instancesCount)}
    if self.lastChangedUtc != nil {
        try container.encode(DateConverter.toString(date: self.lastChangedUtc!, format: .dateTime), forKey: .lastChangedUtc)
    }
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.schemaItemTypeLink != nil {try container.encode(self.schemaItemTypeLink, forKey: .schemaItemTypeLink)}
    if self.tenantId != nil {try container.encode(self.tenantId, forKey: .tenantId)}
    if self.timestampFieldName != nil {try container.encode(self.timestampFieldName, forKey: .timestampFieldName)}
    if self.typeName != nil {try container.encode(self.typeName, forKey: .typeName)}
    if self.idPropertyNames != nil {try container.encode(self.idPropertyNames as! [String]?, forKey: .idPropertyNames)}
    if self.participantProfiles != nil {try container.encode(self.participantProfiles as! [ParticipantData?]?, forKey: .participantProfiles)}
    if self.primaryParticipantProfilePropertyName != nil {try container.encode(self.primaryParticipantProfilePropertyName, forKey: .primaryParticipantProfilePropertyName)}
    if self.dataSourcePrecedenceRules != nil {try container.encode(self.dataSourcePrecedenceRules as! [DataSourcePrecedenceData?]?, forKey: .dataSourcePrecedenceRules)}
    if self.defaultDataSource != nil {try container.encode(self.defaultDataSource as! DataSourceData?, forKey: .defaultDataSource)}
    if self.isActivity != nil {try container.encode(self.isActivity, forKey: .isActivity)}
  }
}

extension DataFactory {
  public static func createInteractionTypeDefinitionProtocol() -> InteractionTypeDefinitionProtocol {
    return InteractionTypeDefinitionData()
  }
}
