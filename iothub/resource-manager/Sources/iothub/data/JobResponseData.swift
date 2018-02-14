// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobResponseData : JobResponseProtocol {
    public var jobId: String?
    public var startTimeUtc: Date?
    public var endTimeUtc: Date?
    public var type: JobTypeEnum?
    public var status: JobStatusEnum?
    public var failureReason: String?
    public var statusMessage: String?
    public var parentJobId: String?

        enum CodingKeys: String, CodingKey {case jobId = "jobId"
        case startTimeUtc = "startTimeUtc"
        case endTimeUtc = "endTimeUtc"
        case type = "type"
        case status = "status"
        case failureReason = "failureReason"
        case statusMessage = "statusMessage"
        case parentJobId = "parentJobId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.jobId) {
        self.jobId = try container.decode(String?.self, forKey: .jobId)
    }
    if container.contains(.startTimeUtc) {
        self.startTimeUtc = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTimeUtc)), format: .dateTimeRfc1123)
    }
    if container.contains(.endTimeUtc) {
        self.endTimeUtc = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTimeUtc)), format: .dateTimeRfc1123)
    }
    if container.contains(.type) {
        self.type = try container.decode(JobTypeEnum?.self, forKey: .type)
    }
    if container.contains(.status) {
        self.status = try container.decode(JobStatusEnum?.self, forKey: .status)
    }
    if container.contains(.failureReason) {
        self.failureReason = try container.decode(String?.self, forKey: .failureReason)
    }
    if container.contains(.statusMessage) {
        self.statusMessage = try container.decode(String?.self, forKey: .statusMessage)
    }
    if container.contains(.parentJobId) {
        self.parentJobId = try container.decode(String?.self, forKey: .parentJobId)
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
    if self.jobId != nil {try container.encode(self.jobId, forKey: .jobId)}
    if self.startTimeUtc != nil {
        try container.encode(DateConverter.toString(date: self.startTimeUtc!, format: .dateTimeRfc1123), forKey: .startTimeUtc)
    }
    if self.endTimeUtc != nil {
        try container.encode(DateConverter.toString(date: self.endTimeUtc!, format: .dateTimeRfc1123), forKey: .endTimeUtc)
    }
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.failureReason != nil {try container.encode(self.failureReason, forKey: .failureReason)}
    if self.statusMessage != nil {try container.encode(self.statusMessage, forKey: .statusMessage)}
    if self.parentJobId != nil {try container.encode(self.parentJobId, forKey: .parentJobId)}
  }
}

extension DataFactory {
  public static func createJobResponseProtocol() -> JobResponseProtocol {
    return JobResponseData()
  }
}
