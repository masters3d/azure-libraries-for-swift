// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ScaleRuleData : ScaleRuleProtocol {
    public var metricTrigger: MetricTriggerProtocol
    public var scaleAction: ScaleActionProtocol

        enum CodingKeys: String, CodingKey {case metricTrigger = "metricTrigger"
        case scaleAction = "scaleAction"
        }

  public init(metricTrigger: MetricTriggerProtocol, scaleAction: ScaleActionProtocol) {
    self.metricTrigger = metricTrigger
    self.scaleAction = scaleAction
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.metricTrigger = try container.decode(MetricTriggerData.self, forKey: .metricTrigger)
    self.scaleAction = try container.decode(ScaleActionData.self, forKey: .scaleAction)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.metricTrigger as! MetricTriggerData, forKey: .metricTrigger)
    try container.encode(self.scaleAction as! ScaleActionData, forKey: .scaleAction)
  }
}

extension DataFactory {
  public static func createScaleRuleProtocol(metricTrigger: MetricTriggerProtocol, scaleAction: ScaleActionProtocol) -> ScaleRuleProtocol {
    return ScaleRuleData(metricTrigger: metricTrigger, scaleAction: scaleAction)
  }
}
