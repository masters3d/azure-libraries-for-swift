// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RecoveryPlanPropertiesData : RecoveryPlanPropertiesProtocol {
    public var friendlyName: String?
    public var primaryFabricId: String?
    public var primaryFabricFriendlyName: String?
    public var recoveryFabricId: String?
    public var recoveryFabricFriendlyName: String?
    public var failoverDeploymentModel: String?
    public var replicationProviders: [String]?
    public var allowedOperations: [String]?
    public var lastPlannedFailoverTime: Date?
    public var lastUnplannedFailoverTime: Date?
    public var lastTestFailoverTime: Date?
    public var currentScenario: CurrentScenarioDetailsProtocol?
    public var currentScenarioStatus: String?
    public var currentScenarioStatusDescription: String?
    public var groups: [RecoveryPlanGroupProtocol?]?

        enum CodingKeys: String, CodingKey {case friendlyName = "friendlyName"
        case primaryFabricId = "primaryFabricId"
        case primaryFabricFriendlyName = "primaryFabricFriendlyName"
        case recoveryFabricId = "recoveryFabricId"
        case recoveryFabricFriendlyName = "recoveryFabricFriendlyName"
        case failoverDeploymentModel = "failoverDeploymentModel"
        case replicationProviders = "replicationProviders"
        case allowedOperations = "allowedOperations"
        case lastPlannedFailoverTime = "lastPlannedFailoverTime"
        case lastUnplannedFailoverTime = "lastUnplannedFailoverTime"
        case lastTestFailoverTime = "lastTestFailoverTime"
        case currentScenario = "currentScenario"
        case currentScenarioStatus = "currentScenarioStatus"
        case currentScenarioStatusDescription = "currentScenarioStatusDescription"
        case groups = "groups"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.primaryFabricId) {
        self.primaryFabricId = try container.decode(String?.self, forKey: .primaryFabricId)
    }
    if container.contains(.primaryFabricFriendlyName) {
        self.primaryFabricFriendlyName = try container.decode(String?.self, forKey: .primaryFabricFriendlyName)
    }
    if container.contains(.recoveryFabricId) {
        self.recoveryFabricId = try container.decode(String?.self, forKey: .recoveryFabricId)
    }
    if container.contains(.recoveryFabricFriendlyName) {
        self.recoveryFabricFriendlyName = try container.decode(String?.self, forKey: .recoveryFabricFriendlyName)
    }
    if container.contains(.failoverDeploymentModel) {
        self.failoverDeploymentModel = try container.decode(String?.self, forKey: .failoverDeploymentModel)
    }
    if container.contains(.replicationProviders) {
        self.replicationProviders = try container.decode([String]?.self, forKey: .replicationProviders)
    }
    if container.contains(.allowedOperations) {
        self.allowedOperations = try container.decode([String]?.self, forKey: .allowedOperations)
    }
    if container.contains(.lastPlannedFailoverTime) {
        self.lastPlannedFailoverTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastPlannedFailoverTime)), format: .dateTime)
    }
    if container.contains(.lastUnplannedFailoverTime) {
        self.lastUnplannedFailoverTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastUnplannedFailoverTime)), format: .dateTime)
    }
    if container.contains(.lastTestFailoverTime) {
        self.lastTestFailoverTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastTestFailoverTime)), format: .dateTime)
    }
    if container.contains(.currentScenario) {
        self.currentScenario = try container.decode(CurrentScenarioDetailsData?.self, forKey: .currentScenario)
    }
    if container.contains(.currentScenarioStatus) {
        self.currentScenarioStatus = try container.decode(String?.self, forKey: .currentScenarioStatus)
    }
    if container.contains(.currentScenarioStatusDescription) {
        self.currentScenarioStatusDescription = try container.decode(String?.self, forKey: .currentScenarioStatusDescription)
    }
    if container.contains(.groups) {
        self.groups = try container.decode([RecoveryPlanGroupData?]?.self, forKey: .groups)
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
    if self.friendlyName != nil {try container.encode(self.friendlyName, forKey: .friendlyName)}
    if self.primaryFabricId != nil {try container.encode(self.primaryFabricId, forKey: .primaryFabricId)}
    if self.primaryFabricFriendlyName != nil {try container.encode(self.primaryFabricFriendlyName, forKey: .primaryFabricFriendlyName)}
    if self.recoveryFabricId != nil {try container.encode(self.recoveryFabricId, forKey: .recoveryFabricId)}
    if self.recoveryFabricFriendlyName != nil {try container.encode(self.recoveryFabricFriendlyName, forKey: .recoveryFabricFriendlyName)}
    if self.failoverDeploymentModel != nil {try container.encode(self.failoverDeploymentModel, forKey: .failoverDeploymentModel)}
    if self.replicationProviders != nil {try container.encode(self.replicationProviders as! [String]?, forKey: .replicationProviders)}
    if self.allowedOperations != nil {try container.encode(self.allowedOperations as! [String]?, forKey: .allowedOperations)}
    if self.lastPlannedFailoverTime != nil {
        try container.encode(DateConverter.toString(date: self.lastPlannedFailoverTime!, format: .dateTime), forKey: .lastPlannedFailoverTime)
    }
    if self.lastUnplannedFailoverTime != nil {
        try container.encode(DateConverter.toString(date: self.lastUnplannedFailoverTime!, format: .dateTime), forKey: .lastUnplannedFailoverTime)
    }
    if self.lastTestFailoverTime != nil {
        try container.encode(DateConverter.toString(date: self.lastTestFailoverTime!, format: .dateTime), forKey: .lastTestFailoverTime)
    }
    if self.currentScenario != nil {try container.encode(self.currentScenario as! CurrentScenarioDetailsData?, forKey: .currentScenario)}
    if self.currentScenarioStatus != nil {try container.encode(self.currentScenarioStatus, forKey: .currentScenarioStatus)}
    if self.currentScenarioStatusDescription != nil {try container.encode(self.currentScenarioStatusDescription, forKey: .currentScenarioStatusDescription)}
    if self.groups != nil {try container.encode(self.groups as! [RecoveryPlanGroupData?]?, forKey: .groups)}
  }
}

extension DataFactory {
  public static func createRecoveryPlanPropertiesProtocol() -> RecoveryPlanPropertiesProtocol {
    return RecoveryPlanPropertiesData()
  }
}
