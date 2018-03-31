// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobHistoryDefinitionPropertiesData : JobHistoryDefinitionPropertiesProtocol {
    public var startTime: Date?
    public var endTime: Date?
    public var expectedExecutionTime: Date?
    public var actionName: JobHistoryActionNameEnum?
    public var status: JobExecutionStatusEnum?
    public var message: String?
    public var retryCount: Int32?
    public var repeatCount: Int32?

        enum CodingKeys: String, CodingKey {case startTime = "startTime"
        case endTime = "endTime"
        case expectedExecutionTime = "expectedExecutionTime"
        case actionName = "actionName"
        case status = "status"
        case message = "message"
        case retryCount = "retryCount"
        case repeatCount = "repeatCount"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.expectedExecutionTime) {
        self.expectedExecutionTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .expectedExecutionTime)), format: .dateTime)
    }
    if container.contains(.actionName) {
        self.actionName = try container.decode(JobHistoryActionNameEnum?.self, forKey: .actionName)
    }
    if container.contains(.status) {
        self.status = try container.decode(JobExecutionStatusEnum?.self, forKey: .status)
    }
    if container.contains(.message) {
        self.message = try container.decode(String?.self, forKey: .message)
    }
    if container.contains(.retryCount) {
        self.retryCount = try container.decode(Int32?.self, forKey: .retryCount)
    }
    if container.contains(.repeatCount) {
        self.repeatCount = try container.decode(Int32?.self, forKey: .repeatCount)
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
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.expectedExecutionTime != nil {
        try container.encode(DateConverter.toString(date: self.expectedExecutionTime!, format: .dateTime), forKey: .expectedExecutionTime)
    }
    if self.actionName != nil { try container.encode(self.actionName, forKey: .actionName) }
    if self.status != nil { try container.encode(self.status, forKey: .status) }
    if self.message != nil { try container.encode(self.message, forKey: .message) }
    if self.retryCount != nil { try container.encode(self.retryCount, forKey: .retryCount) }
    if self.repeatCount != nil { try container.encode(self.repeatCount, forKey: .repeatCount) }
  }
}

extension DataFactory {
  public static func createJobHistoryDefinitionPropertiesProtocol() -> JobHistoryDefinitionPropertiesProtocol {
    return JobHistoryDefinitionPropertiesData()
  }
}
