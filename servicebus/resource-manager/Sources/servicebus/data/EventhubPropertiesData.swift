// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EventhubPropertiesData : EventhubPropertiesProtocol {
    public var partitionIds: [String]?
    public var createdAt: Date?
    public var updatedAt: Date?
    public var messageRetentionInDays: Int64?
    public var partitionCount: Int64?
    public var status: EntityStatusEnum?
    public var captureDescription: CaptureDescriptionProtocol?

        enum CodingKeys: String, CodingKey {case partitionIds = "partitionIds"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case messageRetentionInDays = "messageRetentionInDays"
        case partitionCount = "partitionCount"
        case status = "status"
        case captureDescription = "captureDescription"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.partitionIds) {
        self.partitionIds = try container.decode([String]?.self, forKey: .partitionIds)
    }
    if container.contains(.createdAt) {
        self.createdAt = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdAt)), format: .dateTime)
    }
    if container.contains(.updatedAt) {
        self.updatedAt = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .updatedAt)), format: .dateTime)
    }
    if container.contains(.messageRetentionInDays) {
        self.messageRetentionInDays = try container.decode(Int64?.self, forKey: .messageRetentionInDays)
    }
    if container.contains(.partitionCount) {
        self.partitionCount = try container.decode(Int64?.self, forKey: .partitionCount)
    }
    if container.contains(.status) {
        self.status = try container.decode(EntityStatusEnum?.self, forKey: .status)
    }
    if container.contains(.captureDescription) {
        self.captureDescription = try container.decode(CaptureDescriptionData?.self, forKey: .captureDescription)
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
    if self.partitionIds != nil {try container.encode(self.partitionIds as! [String]?, forKey: .partitionIds)}
    if self.createdAt != nil {
        try container.encode(DateConverter.toString(date: self.createdAt!, format: .dateTime), forKey: .createdAt)
    }
    if self.updatedAt != nil {
        try container.encode(DateConverter.toString(date: self.updatedAt!, format: .dateTime), forKey: .updatedAt)
    }
    if self.messageRetentionInDays != nil {try container.encode(self.messageRetentionInDays, forKey: .messageRetentionInDays)}
    if self.partitionCount != nil {try container.encode(self.partitionCount, forKey: .partitionCount)}
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.captureDescription != nil {try container.encode(self.captureDescription as! CaptureDescriptionData?, forKey: .captureDescription)}
  }
}

extension DataFactory {
  public static func createEventhubPropertiesProtocol() -> EventhubPropertiesProtocol {
    return EventhubPropertiesData()
  }
}
