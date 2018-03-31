// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CostThresholdPropertiesData : CostThresholdPropertiesProtocol {
    public var thresholdId: String?
    public var percentageThreshold: PercentageCostThresholdPropertiesProtocol?
    public var displayOnChart: CostThresholdStatusEnum?
    public var sendNotificationWhenExceeded: CostThresholdStatusEnum?
    public var notificationSent: String?

        enum CodingKeys: String, CodingKey {case thresholdId = "thresholdId"
        case percentageThreshold = "percentageThreshold"
        case displayOnChart = "displayOnChart"
        case sendNotificationWhenExceeded = "sendNotificationWhenExceeded"
        case notificationSent = "notificationSent"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.thresholdId) {
        self.thresholdId = try container.decode(String?.self, forKey: .thresholdId)
    }
    if container.contains(.percentageThreshold) {
        self.percentageThreshold = try container.decode(PercentageCostThresholdPropertiesData?.self, forKey: .percentageThreshold)
    }
    if container.contains(.displayOnChart) {
        self.displayOnChart = try container.decode(CostThresholdStatusEnum?.self, forKey: .displayOnChart)
    }
    if container.contains(.sendNotificationWhenExceeded) {
        self.sendNotificationWhenExceeded = try container.decode(CostThresholdStatusEnum?.self, forKey: .sendNotificationWhenExceeded)
    }
    if container.contains(.notificationSent) {
        self.notificationSent = try container.decode(String?.self, forKey: .notificationSent)
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
    if self.thresholdId != nil { try container.encode(self.thresholdId, forKey: .thresholdId) }
    if self.percentageThreshold != nil { try container.encode(self.percentageThreshold as! PercentageCostThresholdPropertiesData?, forKey: .percentageThreshold) }
    if self.displayOnChart != nil { try container.encode(self.displayOnChart, forKey: .displayOnChart) }
    if self.sendNotificationWhenExceeded != nil { try container.encode(self.sendNotificationWhenExceeded, forKey: .sendNotificationWhenExceeded) }
    if self.notificationSent != nil { try container.encode(self.notificationSent, forKey: .notificationSent) }
  }
}

extension DataFactory {
  public static func createCostThresholdPropertiesProtocol() -> CostThresholdPropertiesProtocol {
    return CostThresholdPropertiesData()
  }
}
