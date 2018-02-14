// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EnrichingKpiData : EnrichingKpiProtocol, KpiDefinitionProtocol {
    public var entityType: EntityTypesEnum
    public var entityTypeName: String
    public var tenantId: String?
    public var kpiName: String?
    public var displayName: [String:String]?
    public var description: [String:String]?
    public var calculationWindow: CalculationWindowTypesEnum
    public var calculationWindowFieldName: String?
    public var function: KpiFunctionsEnum
    public var expression: String
    public var unit: String?
    public var filter: String?
    public var groupBy: [String]?
    public var groupByMetadata: [KpiGroupByMetadataProtocol?]?
    public var participantProfilesMetadata: [KpiParticipantProfilesMetadataProtocol?]?
    public var provisioningState: ProvisioningStatesEnum?
    public var thresHolds: KpiThresholdsProtocol?
    public var aliases: [KpiAliasProtocol?]?
    public var extracts: [KpiExtractProtocol?]?

        enum CodingKeys: String, CodingKey {case entityType = "entityType"
        case entityTypeName = "entityTypeName"
        case tenantId = "tenantId"
        case kpiName = "kpiName"
        case displayName = "displayName"
        case description = "description"
        case calculationWindow = "calculationWindow"
        case calculationWindowFieldName = "calculationWindowFieldName"
        case function = "function"
        case expression = "expression"
        case unit = "unit"
        case filter = "filter"
        case groupBy = "groupBy"
        case groupByMetadata = "groupByMetadata"
        case participantProfilesMetadata = "participantProfilesMetadata"
        case provisioningState = "provisioningState"
        case thresHolds = "thresHolds"
        case aliases = "aliases"
        case extracts = "extracts"
        }

  public init(entityType: EntityTypesEnum, entityTypeName: String, calculationWindow: CalculationWindowTypesEnum, function: KpiFunctionsEnum, expression: String)  {
    self.entityType = entityType
    self.entityTypeName = entityTypeName
    self.calculationWindow = calculationWindow
    self.function = function
    self.expression = expression
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.entityType = try container.decode(EntityTypesEnum.self, forKey: .entityType)
    self.entityTypeName = try container.decode(String.self, forKey: .entityTypeName)
    if container.contains(.tenantId) {
        self.tenantId = try container.decode(String?.self, forKey: .tenantId)
    }
    if container.contains(.kpiName) {
        self.kpiName = try container.decode(String?.self, forKey: .kpiName)
    }
    if container.contains(.displayName) {
        self.displayName = try container.decode([String:String]?.self, forKey: .displayName)
    }
    if container.contains(.description) {
        self.description = try container.decode([String:String]?.self, forKey: .description)
    }
    self.calculationWindow = try container.decode(CalculationWindowTypesEnum.self, forKey: .calculationWindow)
    if container.contains(.calculationWindowFieldName) {
        self.calculationWindowFieldName = try container.decode(String?.self, forKey: .calculationWindowFieldName)
    }
    self.function = try container.decode(KpiFunctionsEnum.self, forKey: .function)
    self.expression = try container.decode(String.self, forKey: .expression)
    if container.contains(.unit) {
        self.unit = try container.decode(String?.self, forKey: .unit)
    }
    if container.contains(.filter) {
        self.filter = try container.decode(String?.self, forKey: .filter)
    }
    if container.contains(.groupBy) {
        self.groupBy = try container.decode([String]?.self, forKey: .groupBy)
    }
    if container.contains(.groupByMetadata) {
        self.groupByMetadata = try container.decode([KpiGroupByMetadataData?]?.self, forKey: .groupByMetadata)
    }
    if container.contains(.participantProfilesMetadata) {
        self.participantProfilesMetadata = try container.decode([KpiParticipantProfilesMetadataData?]?.self, forKey: .participantProfilesMetadata)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(ProvisioningStatesEnum?.self, forKey: .provisioningState)
    }
    if container.contains(.thresHolds) {
        self.thresHolds = try container.decode(KpiThresholdsData?.self, forKey: .thresHolds)
    }
    if container.contains(.aliases) {
        self.aliases = try container.decode([KpiAliasData?]?.self, forKey: .aliases)
    }
    if container.contains(.extracts) {
        self.extracts = try container.decode([KpiExtractData?]?.self, forKey: .extracts)
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
    try container.encode(self.entityType, forKey: .entityType)
    try container.encode(self.entityTypeName, forKey: .entityTypeName)
    if self.tenantId != nil {try container.encode(self.tenantId, forKey: .tenantId)}
    if self.kpiName != nil {try container.encode(self.kpiName, forKey: .kpiName)}
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    try container.encode(self.calculationWindow, forKey: .calculationWindow)
    if self.calculationWindowFieldName != nil {try container.encode(self.calculationWindowFieldName, forKey: .calculationWindowFieldName)}
    try container.encode(self.function, forKey: .function)
    try container.encode(self.expression, forKey: .expression)
    if self.unit != nil {try container.encode(self.unit, forKey: .unit)}
    if self.filter != nil {try container.encode(self.filter, forKey: .filter)}
    if self.groupBy != nil {try container.encode(self.groupBy as! [String]?, forKey: .groupBy)}
    if self.groupByMetadata != nil {try container.encode(self.groupByMetadata as! [KpiGroupByMetadataData?]?, forKey: .groupByMetadata)}
    if self.participantProfilesMetadata != nil {try container.encode(self.participantProfilesMetadata as! [KpiParticipantProfilesMetadataData?]?, forKey: .participantProfilesMetadata)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.thresHolds != nil {try container.encode(self.thresHolds as! KpiThresholdsData?, forKey: .thresHolds)}
    if self.aliases != nil {try container.encode(self.aliases as! [KpiAliasData?]?, forKey: .aliases)}
    if self.extracts != nil {try container.encode(self.extracts as! [KpiExtractData?]?, forKey: .extracts)}
  }
}

extension DataFactory {
  public static func createEnrichingKpiProtocol(entityType: EntityTypesEnum, entityTypeName: String, calculationWindow: CalculationWindowTypesEnum, function: KpiFunctionsEnum, expression: String) -> EnrichingKpiProtocol {
    return EnrichingKpiData(entityType: entityType, entityTypeName: entityTypeName, calculationWindow: calculationWindow, function: function, expression: expression)
  }
}
