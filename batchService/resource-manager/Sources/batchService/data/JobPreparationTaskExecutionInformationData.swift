// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobPreparationTaskExecutionInformationData : JobPreparationTaskExecutionInformationProtocol {
    public var startTime: Date
    public var endTime: Date?
    public var state: JobPreparationTaskStateEnum
    public var taskRootDirectory: String?
    public var taskRootDirectoryUrl: String?
    public var exitCode: Int32?
    public var containerInfo: TaskContainerExecutionInformationProtocol?
    public var failureInfo: TaskFailureInformationProtocol?
    public var retryCount: Int32
    public var lastRetryTime: Date?
    public var result: TaskExecutionResultEnum?

        enum CodingKeys: String, CodingKey {case startTime = "startTime"
        case endTime = "endTime"
        case state = "state"
        case taskRootDirectory = "taskRootDirectory"
        case taskRootDirectoryUrl = "taskRootDirectoryUrl"
        case exitCode = "exitCode"
        case containerInfo = "containerInfo"
        case failureInfo = "failureInfo"
        case retryCount = "retryCount"
        case lastRetryTime = "lastRetryTime"
        case result = "result"
        }

  public init(startTime: Date, state: JobPreparationTaskStateEnum, retryCount: Int32) {
    self.startTime = startTime
    self.state = state
    self.retryCount = retryCount
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
          self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)!
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    self.state = try container.decode(JobPreparationTaskStateEnum.self, forKey: .state)
    if container.contains(.taskRootDirectory) {
        self.taskRootDirectory = try container.decode(String?.self, forKey: .taskRootDirectory)
    }
    if container.contains(.taskRootDirectoryUrl) {
        self.taskRootDirectoryUrl = try container.decode(String?.self, forKey: .taskRootDirectoryUrl)
    }
    if container.contains(.exitCode) {
        self.exitCode = try container.decode(Int32?.self, forKey: .exitCode)
    }
    if container.contains(.containerInfo) {
        self.containerInfo = try container.decode(TaskContainerExecutionInformationData?.self, forKey: .containerInfo)
    }
    if container.contains(.failureInfo) {
        self.failureInfo = try container.decode(TaskFailureInformationData?.self, forKey: .failureInfo)
    }
    self.retryCount = try container.decode(Int32.self, forKey: .retryCount)
    if container.contains(.lastRetryTime) {
        self.lastRetryTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastRetryTime)), format: .dateTime)
    }
    if container.contains(.result) {
        self.result = try container.decode(TaskExecutionResultEnum?.self, forKey: .result)
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
    try container.encode(DateConverter.toString(date: self.startTime, format: .dateTime), forKey: .startTime)
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    try container.encode(self.state, forKey: .state)
    if self.taskRootDirectory != nil { try container.encode(self.taskRootDirectory, forKey: .taskRootDirectory) }
    if self.taskRootDirectoryUrl != nil { try container.encode(self.taskRootDirectoryUrl, forKey: .taskRootDirectoryUrl) }
    if self.exitCode != nil { try container.encode(self.exitCode, forKey: .exitCode) }
    if self.containerInfo != nil { try container.encode(self.containerInfo as! TaskContainerExecutionInformationData?, forKey: .containerInfo) }
    if self.failureInfo != nil { try container.encode(self.failureInfo as! TaskFailureInformationData?, forKey: .failureInfo) }
    try container.encode(self.retryCount, forKey: .retryCount)
    if self.lastRetryTime != nil {
        try container.encode(DateConverter.toString(date: self.lastRetryTime!, format: .dateTime), forKey: .lastRetryTime)
    }
    if self.result != nil { try container.encode(self.result, forKey: .result) }
  }
}

extension DataFactory {
  public static func createJobPreparationTaskExecutionInformationProtocol(startTime: Date, state: JobPreparationTaskStateEnum, retryCount: Int32) -> JobPreparationTaskExecutionInformationProtocol {
    return JobPreparationTaskExecutionInformationData(startTime: startTime, state: state, retryCount: retryCount)
  }
}
