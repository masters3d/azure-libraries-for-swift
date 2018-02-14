// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MabJobData : MabJobProtocol, JobProtocol {
    public var entityFriendlyName: String?
    public var backupManagementType: BackupManagementTypeEnum?
    public var operation: String?
    public var status: String?
    public var startTime: Date?
    public var endTime: Date?
    public var activityId: String?
    public var duration: String?
    public var actionsInfo: [JobSupportedActionEnum?]?
    public var mabServerName: String?
    public var mabServerType: MabServerTypeEnum?
    public var workloadType: WorkloadTypeEnum?
    public var errorDetails: [MabErrorInfoProtocol?]?
    public var extendedInfo: MabJobExtendedInfoProtocol?

        enum CodingKeys: String, CodingKey {case entityFriendlyName = "entityFriendlyName"
        case backupManagementType = "backupManagementType"
        case operation = "operation"
        case status = "status"
        case startTime = "startTime"
        case endTime = "endTime"
        case activityId = "activityId"
        case duration = "duration"
        case actionsInfo = "actionsInfo"
        case mabServerName = "mabServerName"
        case mabServerType = "mabServerType"
        case workloadType = "workloadType"
        case errorDetails = "errorDetails"
        case extendedInfo = "extendedInfo"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.entityFriendlyName) {
        self.entityFriendlyName = try container.decode(String?.self, forKey: .entityFriendlyName)
    }
    if container.contains(.backupManagementType) {
        self.backupManagementType = try container.decode(BackupManagementTypeEnum?.self, forKey: .backupManagementType)
    }
    if container.contains(.operation) {
        self.operation = try container.decode(String?.self, forKey: .operation)
    }
    if container.contains(.status) {
        self.status = try container.decode(String?.self, forKey: .status)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.activityId) {
        self.activityId = try container.decode(String?.self, forKey: .activityId)
    }
    if container.contains(.duration) {
        self.duration = try container.decode(String?.self, forKey: .duration)
    }
    if container.contains(.actionsInfo) {
        self.actionsInfo = try container.decode([JobSupportedActionEnum?]?.self, forKey: .actionsInfo)
    }
    if container.contains(.mabServerName) {
        self.mabServerName = try container.decode(String?.self, forKey: .mabServerName)
    }
    if container.contains(.mabServerType) {
        self.mabServerType = try container.decode(MabServerTypeEnum?.self, forKey: .mabServerType)
    }
    if container.contains(.workloadType) {
        self.workloadType = try container.decode(WorkloadTypeEnum?.self, forKey: .workloadType)
    }
    if container.contains(.errorDetails) {
        self.errorDetails = try container.decode([MabErrorInfoData?]?.self, forKey: .errorDetails)
    }
    if container.contains(.extendedInfo) {
        self.extendedInfo = try container.decode(MabJobExtendedInfoData?.self, forKey: .extendedInfo)
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
    if self.entityFriendlyName != nil {try container.encode(self.entityFriendlyName, forKey: .entityFriendlyName)}
    if self.backupManagementType != nil {try container.encode(self.backupManagementType, forKey: .backupManagementType)}
    if self.operation != nil {try container.encode(self.operation, forKey: .operation)}
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.activityId != nil {try container.encode(self.activityId, forKey: .activityId)}
    if self.duration != nil {try container.encode(self.duration, forKey: .duration)}
    if self.actionsInfo != nil {try container.encode(self.actionsInfo as! [JobSupportedActionEnum?]?, forKey: .actionsInfo)}
    if self.mabServerName != nil {try container.encode(self.mabServerName, forKey: .mabServerName)}
    if self.mabServerType != nil {try container.encode(self.mabServerType, forKey: .mabServerType)}
    if self.workloadType != nil {try container.encode(self.workloadType, forKey: .workloadType)}
    if self.errorDetails != nil {try container.encode(self.errorDetails as! [MabErrorInfoData?]?, forKey: .errorDetails)}
    if self.extendedInfo != nil {try container.encode(self.extendedInfo as! MabJobExtendedInfoData?, forKey: .extendedInfo)}
  }
}

extension DataFactory {
  public static func createMabJobProtocol() -> MabJobProtocol {
    return MabJobData()
  }
}