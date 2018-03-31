// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct LocationThresholdRuleConditionData : LocationThresholdRuleConditionProtocol, RuleConditionProtocol {
    public var dataSource: RuleDataSourceProtocol?
    public var windowSize: String?
    public var failedLocationCount: Int32

        enum CodingKeys: String, CodingKey {case dataSource = "dataSource"
        case windowSize = "windowSize"
        case failedLocationCount = "failedLocationCount"
        }

  public init(failedLocationCount: Int32) {
    self.failedLocationCount = failedLocationCount
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.dataSource) {
        self.dataSource = try container.decode(RuleDataSourceData?.self, forKey: .dataSource)
    }
    if container.contains(.windowSize) {
        self.windowSize = try container.decode(String?.self, forKey: .windowSize)
    }
    self.failedLocationCount = try container.decode(Int32.self, forKey: .failedLocationCount)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.dataSource != nil { try container.encode(self.dataSource as! RuleDataSourceData?, forKey: .dataSource) }
    if self.windowSize != nil { try container.encode(self.windowSize, forKey: .windowSize) }
    try container.encode(self.failedLocationCount, forKey: .failedLocationCount)
  }
}

extension DataFactory {
  public static func createLocationThresholdRuleConditionProtocol(failedLocationCount: Int32) -> LocationThresholdRuleConditionProtocol {
    return LocationThresholdRuleConditionData(failedLocationCount: failedLocationCount)
  }
}
