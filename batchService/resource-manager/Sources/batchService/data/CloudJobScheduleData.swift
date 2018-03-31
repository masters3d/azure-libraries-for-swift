// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CloudJobScheduleData : CloudJobScheduleProtocol {
    public var id: String?
    public var displayName: String?
    public var url: String?
    public var eTag: String?
    public var lastModified: Date?
    public var creationTime: Date?
    public var state: JobScheduleStateEnum?
    public var stateTransitionTime: Date?
    public var previousState: JobScheduleStateEnum?
    public var previousStateTransitionTime: Date?
    public var schedule: ScheduleProtocol?
    public var jobSpecification: JobSpecificationProtocol?
    public var executionInfo: JobScheduleExecutionInformationProtocol?
    public var metadata: [MetadataItemProtocol?]?
    public var stats: JobScheduleStatisticsProtocol?

        enum CodingKeys: String, CodingKey {case id = "id"
        case displayName = "displayName"
        case url = "url"
        case eTag = "eTag"
        case lastModified = "lastModified"
        case creationTime = "creationTime"
        case state = "state"
        case stateTransitionTime = "stateTransitionTime"
        case previousState = "previousState"
        case previousStateTransitionTime = "previousStateTransitionTime"
        case schedule = "schedule"
        case jobSpecification = "jobSpecification"
        case executionInfo = "executionInfo"
        case metadata = "metadata"
        case stats = "stats"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.displayName) {
        self.displayName = try container.decode(String?.self, forKey: .displayName)
    }
    if container.contains(.url) {
        self.url = try container.decode(String?.self, forKey: .url)
    }
    if container.contains(.eTag) {
        self.eTag = try container.decode(String?.self, forKey: .eTag)
    }
    if container.contains(.lastModified) {
        self.lastModified = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastModified)), format: .dateTime)
    }
    if container.contains(.creationTime) {
        self.creationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .creationTime)), format: .dateTime)
    }
    if container.contains(.state) {
        self.state = try container.decode(JobScheduleStateEnum?.self, forKey: .state)
    }
    if container.contains(.stateTransitionTime) {
        self.stateTransitionTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .stateTransitionTime)), format: .dateTime)
    }
    if container.contains(.previousState) {
        self.previousState = try container.decode(JobScheduleStateEnum?.self, forKey: .previousState)
    }
    if container.contains(.previousStateTransitionTime) {
        self.previousStateTransitionTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .previousStateTransitionTime)), format: .dateTime)
    }
    if container.contains(.schedule) {
        self.schedule = try container.decode(ScheduleData?.self, forKey: .schedule)
    }
    if container.contains(.jobSpecification) {
        self.jobSpecification = try container.decode(JobSpecificationData?.self, forKey: .jobSpecification)
    }
    if container.contains(.executionInfo) {
        self.executionInfo = try container.decode(JobScheduleExecutionInformationData?.self, forKey: .executionInfo)
    }
    if container.contains(.metadata) {
        self.metadata = try container.decode([MetadataItemData?]?.self, forKey: .metadata)
    }
    if container.contains(.stats) {
        self.stats = try container.decode(JobScheduleStatisticsData?.self, forKey: .stats)
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
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    if self.url != nil {try container.encode(self.url, forKey: .url)}
    if self.eTag != nil {try container.encode(self.eTag, forKey: .eTag)}
    if self.lastModified != nil {
        try container.encode(DateConverter.toString(date: self.lastModified!, format: .dateTime), forKey: .lastModified)
    }
    if self.creationTime != nil {
        try container.encode(DateConverter.toString(date: self.creationTime!, format: .dateTime), forKey: .creationTime)
    }
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.stateTransitionTime != nil {
        try container.encode(DateConverter.toString(date: self.stateTransitionTime!, format: .dateTime), forKey: .stateTransitionTime)
    }
    if self.previousState != nil {try container.encode(self.previousState, forKey: .previousState)}
    if self.previousStateTransitionTime != nil {
        try container.encode(DateConverter.toString(date: self.previousStateTransitionTime!, format: .dateTime), forKey: .previousStateTransitionTime)
    }
    if self.schedule != nil {try container.encode(self.schedule as! ScheduleData?, forKey: .schedule)}
    if self.jobSpecification != nil {try container.encode(self.jobSpecification as! JobSpecificationData?, forKey: .jobSpecification)}
    if self.executionInfo != nil {try container.encode(self.executionInfo as! JobScheduleExecutionInformationData?, forKey: .executionInfo)}
    if self.metadata != nil {try container.encode(self.metadata as! [MetadataItemData?]?, forKey: .metadata)}
    if self.stats != nil {try container.encode(self.stats as! JobScheduleStatisticsData?, forKey: .stats)}
  }
}

extension DataFactory {
  public static func createCloudJobScheduleProtocol() -> CloudJobScheduleProtocol {
    return CloudJobScheduleData()
  }
}
