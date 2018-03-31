// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DatabasePropertiesData : DatabasePropertiesProtocol {
    public var collation: String?
    public var creationDate: Date?
    public var containmentState: Int64?
    public var currentServiceObjectiveId: String?
    public var databaseId: String?
    public var earliestRestoreDate: Date?
    public var createMode: CreateModeEnum?
    public var sourceDatabaseId: String?
    public var sourceDatabaseDeletionDate: Date?
    public var restorePointInTime: Date?
    public var recoveryServicesRecoveryPointResourceId: String?
    public var edition: DatabaseEditionEnum?
    public var maxSizeBytes: String?
    public var requestedServiceObjectiveId: String?
    public var requestedServiceObjectiveName: ServiceObjectiveNameEnum?
    public var serviceLevelObjective: ServiceObjectiveNameEnum?
    public var status: String?
    public var elasticPoolName: String?
    public var defaultSecondaryLocation: String?
    public var serviceTierAdvisors: [ServiceTierAdvisorProtocol?]?
    public var transparentDataEncryption: [TransparentDataEncryptionProtocol?]?
    public var recommendedIndex: [RecommendedIndexProtocol?]?
    public var failoverGroupId: String?
    public var readScale: ReadScaleEnum?
    public var sampleName: SampleNameEnum?
    public var zoneRedundant: Bool?

        enum CodingKeys: String, CodingKey {case collation = "collation"
        case creationDate = "creationDate"
        case containmentState = "containmentState"
        case currentServiceObjectiveId = "currentServiceObjectiveId"
        case databaseId = "databaseId"
        case earliestRestoreDate = "earliestRestoreDate"
        case createMode = "createMode"
        case sourceDatabaseId = "sourceDatabaseId"
        case sourceDatabaseDeletionDate = "sourceDatabaseDeletionDate"
        case restorePointInTime = "restorePointInTime"
        case recoveryServicesRecoveryPointResourceId = "recoveryServicesRecoveryPointResourceId"
        case edition = "edition"
        case maxSizeBytes = "maxSizeBytes"
        case requestedServiceObjectiveId = "requestedServiceObjectiveId"
        case requestedServiceObjectiveName = "requestedServiceObjectiveName"
        case serviceLevelObjective = "serviceLevelObjective"
        case status = "status"
        case elasticPoolName = "elasticPoolName"
        case defaultSecondaryLocation = "defaultSecondaryLocation"
        case serviceTierAdvisors = "serviceTierAdvisors"
        case transparentDataEncryption = "transparentDataEncryption"
        case recommendedIndex = "recommendedIndex"
        case failoverGroupId = "failoverGroupId"
        case readScale = "readScale"
        case sampleName = "sampleName"
        case zoneRedundant = "zoneRedundant"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.collation) {
        self.collation = try container.decode(String?.self, forKey: .collation)
    }
    if container.contains(.creationDate) {
        self.creationDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .creationDate)), format: .dateTime)
    }
    if container.contains(.containmentState) {
        self.containmentState = try container.decode(Int64?.self, forKey: .containmentState)
    }
    if container.contains(.currentServiceObjectiveId) {
        self.currentServiceObjectiveId = try container.decode(String?.self, forKey: .currentServiceObjectiveId)
    }
    if container.contains(.databaseId) {
        self.databaseId = try container.decode(String?.self, forKey: .databaseId)
    }
    if container.contains(.earliestRestoreDate) {
        self.earliestRestoreDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .earliestRestoreDate)), format: .dateTime)
    }
    if container.contains(.createMode) {
        self.createMode = try container.decode(CreateModeEnum?.self, forKey: .createMode)
    }
    if container.contains(.sourceDatabaseId) {
        self.sourceDatabaseId = try container.decode(String?.self, forKey: .sourceDatabaseId)
    }
    if container.contains(.sourceDatabaseDeletionDate) {
        self.sourceDatabaseDeletionDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .sourceDatabaseDeletionDate)), format: .dateTime)
    }
    if container.contains(.restorePointInTime) {
        self.restorePointInTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .restorePointInTime)), format: .dateTime)
    }
    if container.contains(.recoveryServicesRecoveryPointResourceId) {
        self.recoveryServicesRecoveryPointResourceId = try container.decode(String?.self, forKey: .recoveryServicesRecoveryPointResourceId)
    }
    if container.contains(.edition) {
        self.edition = try container.decode(DatabaseEditionEnum?.self, forKey: .edition)
    }
    if container.contains(.maxSizeBytes) {
        self.maxSizeBytes = try container.decode(String?.self, forKey: .maxSizeBytes)
    }
    if container.contains(.requestedServiceObjectiveId) {
        self.requestedServiceObjectiveId = try container.decode(String?.self, forKey: .requestedServiceObjectiveId)
    }
    if container.contains(.requestedServiceObjectiveName) {
        self.requestedServiceObjectiveName = try container.decode(ServiceObjectiveNameEnum?.self, forKey: .requestedServiceObjectiveName)
    }
    if container.contains(.serviceLevelObjective) {
        self.serviceLevelObjective = try container.decode(ServiceObjectiveNameEnum?.self, forKey: .serviceLevelObjective)
    }
    if container.contains(.status) {
        self.status = try container.decode(String?.self, forKey: .status)
    }
    if container.contains(.elasticPoolName) {
        self.elasticPoolName = try container.decode(String?.self, forKey: .elasticPoolName)
    }
    if container.contains(.defaultSecondaryLocation) {
        self.defaultSecondaryLocation = try container.decode(String?.self, forKey: .defaultSecondaryLocation)
    }
    if container.contains(.serviceTierAdvisors) {
        self.serviceTierAdvisors = try container.decode([ServiceTierAdvisorData?]?.self, forKey: .serviceTierAdvisors)
    }
    if container.contains(.transparentDataEncryption) {
        self.transparentDataEncryption = try container.decode([TransparentDataEncryptionData?]?.self, forKey: .transparentDataEncryption)
    }
    if container.contains(.recommendedIndex) {
        self.recommendedIndex = try container.decode([RecommendedIndexData?]?.self, forKey: .recommendedIndex)
    }
    if container.contains(.failoverGroupId) {
        self.failoverGroupId = try container.decode(String?.self, forKey: .failoverGroupId)
    }
    if container.contains(.readScale) {
        self.readScale = try container.decode(ReadScaleEnum?.self, forKey: .readScale)
    }
    if container.contains(.sampleName) {
        self.sampleName = try container.decode(SampleNameEnum?.self, forKey: .sampleName)
    }
    if container.contains(.zoneRedundant) {
        self.zoneRedundant = try container.decode(Bool?.self, forKey: .zoneRedundant)
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
    if self.collation != nil {try container.encode(self.collation, forKey: .collation)}
    if self.creationDate != nil {
        try container.encode(DateConverter.toString(date: self.creationDate!, format: .dateTime), forKey: .creationDate)
    }
    if self.containmentState != nil {try container.encode(self.containmentState, forKey: .containmentState)}
    if self.currentServiceObjectiveId != nil {try container.encode(self.currentServiceObjectiveId, forKey: .currentServiceObjectiveId)}
    if self.databaseId != nil {try container.encode(self.databaseId, forKey: .databaseId)}
    if self.earliestRestoreDate != nil {
        try container.encode(DateConverter.toString(date: self.earliestRestoreDate!, format: .dateTime), forKey: .earliestRestoreDate)
    }
    if self.createMode != nil {try container.encode(self.createMode, forKey: .createMode)}
    if self.sourceDatabaseId != nil {try container.encode(self.sourceDatabaseId, forKey: .sourceDatabaseId)}
    if self.sourceDatabaseDeletionDate != nil {
        try container.encode(DateConverter.toString(date: self.sourceDatabaseDeletionDate!, format: .dateTime), forKey: .sourceDatabaseDeletionDate)
    }
    if self.restorePointInTime != nil {
        try container.encode(DateConverter.toString(date: self.restorePointInTime!, format: .dateTime), forKey: .restorePointInTime)
    }
    if self.recoveryServicesRecoveryPointResourceId != nil {try container.encode(self.recoveryServicesRecoveryPointResourceId, forKey: .recoveryServicesRecoveryPointResourceId)}
    if self.edition != nil {try container.encode(self.edition, forKey: .edition)}
    if self.maxSizeBytes != nil {try container.encode(self.maxSizeBytes, forKey: .maxSizeBytes)}
    if self.requestedServiceObjectiveId != nil {try container.encode(self.requestedServiceObjectiveId, forKey: .requestedServiceObjectiveId)}
    if self.requestedServiceObjectiveName != nil {try container.encode(self.requestedServiceObjectiveName, forKey: .requestedServiceObjectiveName)}
    if self.serviceLevelObjective != nil {try container.encode(self.serviceLevelObjective, forKey: .serviceLevelObjective)}
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.elasticPoolName != nil {try container.encode(self.elasticPoolName, forKey: .elasticPoolName)}
    if self.defaultSecondaryLocation != nil {try container.encode(self.defaultSecondaryLocation, forKey: .defaultSecondaryLocation)}
    if self.serviceTierAdvisors != nil {try container.encode(self.serviceTierAdvisors as! [ServiceTierAdvisorData?]?, forKey: .serviceTierAdvisors)}
    if self.transparentDataEncryption != nil {try container.encode(self.transparentDataEncryption as! [TransparentDataEncryptionData?]?, forKey: .transparentDataEncryption)}
    if self.recommendedIndex != nil {try container.encode(self.recommendedIndex as! [RecommendedIndexData?]?, forKey: .recommendedIndex)}
    if self.failoverGroupId != nil {try container.encode(self.failoverGroupId, forKey: .failoverGroupId)}
    if self.readScale != nil {try container.encode(self.readScale, forKey: .readScale)}
    if self.sampleName != nil {try container.encode(self.sampleName, forKey: .sampleName)}
    if self.zoneRedundant != nil {try container.encode(self.zoneRedundant, forKey: .zoneRedundant)}
  }
}

extension DataFactory {
  public static func createDatabasePropertiesProtocol() -> DatabasePropertiesProtocol {
    return DatabasePropertiesData()
  }
}
