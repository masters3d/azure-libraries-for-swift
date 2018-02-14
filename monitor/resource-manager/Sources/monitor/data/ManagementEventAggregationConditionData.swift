// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ManagementEventAggregationConditionData : ManagementEventAggregationConditionProtocol {
    public var _operator: ConditionOperatorEnum?
    public var threshold: Double?
    public var windowSize: String?

        enum CodingKeys: String, CodingKey {case _operator = "operator"
        case threshold = "threshold"
        case windowSize = "windowSize"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(._operator) {
        self._operator = try container.decode(ConditionOperatorEnum?.self, forKey: ._operator)
    }
    if container.contains(.threshold) {
        self.threshold = try container.decode(Double?.self, forKey: .threshold)
    }
    if container.contains(.windowSize) {
        self.windowSize = try container.decode(String?.self, forKey: .windowSize)
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
    if self._operator != nil {try container.encode(self._operator, forKey: ._operator)}
    if self.threshold != nil {try container.encode(self.threshold, forKey: .threshold)}
    if self.windowSize != nil {try container.encode(self.windowSize, forKey: .windowSize)}
  }
}

extension DataFactory {
  public static func createManagementEventAggregationConditionProtocol() -> ManagementEventAggregationConditionProtocol {
    return ManagementEventAggregationConditionData()
  }
}
