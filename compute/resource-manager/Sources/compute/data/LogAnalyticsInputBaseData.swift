// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct LogAnalyticsInputBaseData : LogAnalyticsInputBaseProtocol {
    public var blobContainerSasUri: String
    public var fromTime: Date
    public var toTime: Date
    public var groupByThrottlePolicy: Bool?
    public var groupByOperationName: Bool?
    public var groupByResourceName: Bool?

        enum CodingKeys: String, CodingKey {case blobContainerSasUri = "blobContainerSasUri"
        case fromTime = "fromTime"
        case toTime = "toTime"
        case groupByThrottlePolicy = "groupByThrottlePolicy"
        case groupByOperationName = "groupByOperationName"
        case groupByResourceName = "groupByResourceName"
        }

  public init(blobContainerSasUri: String, fromTime: Date, toTime: Date)  {
    self.blobContainerSasUri = blobContainerSasUri
    self.fromTime = fromTime
    self.toTime = toTime
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.blobContainerSasUri = try container.decode(String.self, forKey: .blobContainerSasUri)
        self.fromTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .fromTime)), format: .dateTime)!
        self.toTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .toTime)), format: .dateTime)!
    if container.contains(.groupByThrottlePolicy) {
        self.groupByThrottlePolicy = try container.decode(Bool?.self, forKey: .groupByThrottlePolicy)
    }
    if container.contains(.groupByOperationName) {
        self.groupByOperationName = try container.decode(Bool?.self, forKey: .groupByOperationName)
    }
    if container.contains(.groupByResourceName) {
        self.groupByResourceName = try container.decode(Bool?.self, forKey: .groupByResourceName)
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
    try container.encode(self.blobContainerSasUri, forKey: .blobContainerSasUri)
    try container.encode(DateConverter.toString(date: self.fromTime, format: .dateTime), forKey: .fromTime)
    try container.encode(DateConverter.toString(date: self.toTime, format: .dateTime), forKey: .toTime)
    if self.groupByThrottlePolicy != nil {try container.encode(self.groupByThrottlePolicy, forKey: .groupByThrottlePolicy)}
    if self.groupByOperationName != nil {try container.encode(self.groupByOperationName, forKey: .groupByOperationName)}
    if self.groupByResourceName != nil {try container.encode(self.groupByResourceName, forKey: .groupByResourceName)}
  }
}

extension DataFactory {
  public static func createLogAnalyticsInputBaseProtocol(blobContainerSasUri: String, fromTime: Date, toTime: Date) -> LogAnalyticsInputBaseProtocol {
    return LogAnalyticsInputBaseData(blobContainerSasUri: blobContainerSasUri, fromTime: fromTime, toTime: toTime)
  }
}
