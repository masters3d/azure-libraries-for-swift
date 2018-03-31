// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UpgradeDetailsData : UpgradeDetailsProtocol {
    public var operationId: String?
    public var startTimeUtc: Date?
    public var lastUpdatedTimeUtc: Date?
    public var endTimeUtc: Date?
    public var status: VaultUpgradeStateEnum?
    public var message: String?
    public var triggerType: TriggerTypeEnum?
    public var upgradedResourceId: String?
    public var previousResourceId: String?

        enum CodingKeys: String, CodingKey {case operationId = "operationId"
        case startTimeUtc = "startTimeUtc"
        case lastUpdatedTimeUtc = "lastUpdatedTimeUtc"
        case endTimeUtc = "endTimeUtc"
        case status = "status"
        case message = "message"
        case triggerType = "triggerType"
        case upgradedResourceId = "upgradedResourceId"
        case previousResourceId = "previousResourceId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.operationId) {
        self.operationId = try container.decode(String?.self, forKey: .operationId)
    }
    if container.contains(.startTimeUtc) {
        self.startTimeUtc = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTimeUtc)), format: .dateTime)
    }
    if container.contains(.lastUpdatedTimeUtc) {
        self.lastUpdatedTimeUtc = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastUpdatedTimeUtc)), format: .dateTime)
    }
    if container.contains(.endTimeUtc) {
        self.endTimeUtc = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTimeUtc)), format: .dateTime)
    }
    if container.contains(.status) {
        self.status = try container.decode(VaultUpgradeStateEnum?.self, forKey: .status)
    }
    if container.contains(.message) {
        self.message = try container.decode(String?.self, forKey: .message)
    }
    if container.contains(.triggerType) {
        self.triggerType = try container.decode(TriggerTypeEnum?.self, forKey: .triggerType)
    }
    if container.contains(.upgradedResourceId) {
        self.upgradedResourceId = try container.decode(String?.self, forKey: .upgradedResourceId)
    }
    if container.contains(.previousResourceId) {
        self.previousResourceId = try container.decode(String?.self, forKey: .previousResourceId)
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
    if self.operationId != nil {try container.encode(self.operationId, forKey: .operationId)}
    if self.startTimeUtc != nil {
        try container.encode(DateConverter.toString(date: self.startTimeUtc!, format: .dateTime), forKey: .startTimeUtc)
    }
    if self.lastUpdatedTimeUtc != nil {
        try container.encode(DateConverter.toString(date: self.lastUpdatedTimeUtc!, format: .dateTime), forKey: .lastUpdatedTimeUtc)
    }
    if self.endTimeUtc != nil {
        try container.encode(DateConverter.toString(date: self.endTimeUtc!, format: .dateTime), forKey: .endTimeUtc)
    }
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.message != nil {try container.encode(self.message, forKey: .message)}
    if self.triggerType != nil {try container.encode(self.triggerType, forKey: .triggerType)}
    if self.upgradedResourceId != nil {try container.encode(self.upgradedResourceId, forKey: .upgradedResourceId)}
    if self.previousResourceId != nil {try container.encode(self.previousResourceId, forKey: .previousResourceId)}
  }
}

extension DataFactory {
  public static func createUpgradeDetailsProtocol() -> UpgradeDetailsProtocol {
    return UpgradeDetailsData()
  }
}
