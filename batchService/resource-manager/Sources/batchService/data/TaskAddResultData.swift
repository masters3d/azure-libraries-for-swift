// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TaskAddResultData : TaskAddResultProtocol {
    public var status: TaskAddStatusEnum
    public var taskId: String
    public var eTag: String?
    public var lastModified: Date?
    public var location: String?
    public var error: BatchErrorProtocol?

        enum CodingKeys: String, CodingKey {case status = "status"
        case taskId = "taskId"
        case eTag = "eTag"
        case lastModified = "lastModified"
        case location = "location"
        case error = "error"
        }

  public init(status: TaskAddStatusEnum, taskId: String)  {
    self.status = status
    self.taskId = taskId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.status = try container.decode(TaskAddStatusEnum.self, forKey: .status)
    self.taskId = try container.decode(String.self, forKey: .taskId)
    if container.contains(.eTag) {
        self.eTag = try container.decode(String?.self, forKey: .eTag)
    }
    if container.contains(.lastModified) {
        self.lastModified = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastModified)), format: .dateTime)
    }
    if container.contains(.location) {
        self.location = try container.decode(String?.self, forKey: .location)
    }
    if container.contains(.error) {
        self.error = try container.decode(BatchErrorData?.self, forKey: .error)
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
    try container.encode(self.status, forKey: .status)
    try container.encode(self.taskId, forKey: .taskId)
    if self.eTag != nil {try container.encode(self.eTag, forKey: .eTag)}
    if self.lastModified != nil {
        try container.encode(DateConverter.toString(date: self.lastModified!, format: .dateTime), forKey: .lastModified)
    }
    if self.location != nil {try container.encode(self.location, forKey: .location)}
    if self.error != nil {try container.encode(self.error as! BatchErrorData?, forKey: .error)}
  }
}

extension DataFactory {
  public static func createTaskAddResultProtocol(status: TaskAddStatusEnum, taskId: String) -> TaskAddResultProtocol {
    return TaskAddResultData(status: status, taskId: taskId)
  }
}