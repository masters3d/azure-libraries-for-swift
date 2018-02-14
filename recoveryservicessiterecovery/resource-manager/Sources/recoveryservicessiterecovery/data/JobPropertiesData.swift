// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobPropertiesData : JobPropertiesProtocol {
    public var activityId: String?
    public var scenarioName: String?
    public var friendlyName: String?
    public var state: String?
    public var stateDescription: String?
    public var tasks: [ASRTaskProtocol?]?
    public var errors: [JobErrorDetailsProtocol?]?
    public var startTime: Date?
    public var endTime: Date?
    public var allowedActions: [String]?
    public var targetObjectId: String?
    public var targetObjectName: String?
    public var targetInstanceType: String?
    public var customDetails: JobDetailsProtocol?

        enum CodingKeys: String, CodingKey {case activityId = "activityId"
        case scenarioName = "scenarioName"
        case friendlyName = "friendlyName"
        case state = "state"
        case stateDescription = "stateDescription"
        case tasks = "tasks"
        case errors = "errors"
        case startTime = "startTime"
        case endTime = "endTime"
        case allowedActions = "allowedActions"
        case targetObjectId = "targetObjectId"
        case targetObjectName = "targetObjectName"
        case targetInstanceType = "targetInstanceType"
        case customDetails = "customDetails"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.activityId) {
        self.activityId = try container.decode(String?.self, forKey: .activityId)
    }
    if container.contains(.scenarioName) {
        self.scenarioName = try container.decode(String?.self, forKey: .scenarioName)
    }
    if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.state) {
        self.state = try container.decode(String?.self, forKey: .state)
    }
    if container.contains(.stateDescription) {
        self.stateDescription = try container.decode(String?.self, forKey: .stateDescription)
    }
    if container.contains(.tasks) {
        self.tasks = try container.decode([ASRTaskData?]?.self, forKey: .tasks)
    }
    if container.contains(.errors) {
        self.errors = try container.decode([JobErrorDetailsData?]?.self, forKey: .errors)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.allowedActions) {
        self.allowedActions = try container.decode([String]?.self, forKey: .allowedActions)
    }
    if container.contains(.targetObjectId) {
        self.targetObjectId = try container.decode(String?.self, forKey: .targetObjectId)
    }
    if container.contains(.targetObjectName) {
        self.targetObjectName = try container.decode(String?.self, forKey: .targetObjectName)
    }
    if container.contains(.targetInstanceType) {
        self.targetInstanceType = try container.decode(String?.self, forKey: .targetInstanceType)
    }
    if container.contains(.customDetails) {
        self.customDetails = try container.decode(JobDetailsData?.self, forKey: .customDetails)
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
    if self.activityId != nil {try container.encode(self.activityId, forKey: .activityId)}
    if self.scenarioName != nil {try container.encode(self.scenarioName, forKey: .scenarioName)}
    if self.friendlyName != nil {try container.encode(self.friendlyName, forKey: .friendlyName)}
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.stateDescription != nil {try container.encode(self.stateDescription, forKey: .stateDescription)}
    if self.tasks != nil {try container.encode(self.tasks as! [ASRTaskData?]?, forKey: .tasks)}
    if self.errors != nil {try container.encode(self.errors as! [JobErrorDetailsData?]?, forKey: .errors)}
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.allowedActions != nil {try container.encode(self.allowedActions as! [String]?, forKey: .allowedActions)}
    if self.targetObjectId != nil {try container.encode(self.targetObjectId, forKey: .targetObjectId)}
    if self.targetObjectName != nil {try container.encode(self.targetObjectName, forKey: .targetObjectName)}
    if self.targetInstanceType != nil {try container.encode(self.targetInstanceType, forKey: .targetInstanceType)}
    if self.customDetails != nil {try container.encode(self.customDetails as! JobDetailsData?, forKey: .customDetails)}
  }
}

extension DataFactory {
  public static func createJobPropertiesProtocol() -> JobPropertiesProtocol {
    return JobPropertiesData()
  }
}