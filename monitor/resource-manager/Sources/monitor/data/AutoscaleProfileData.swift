// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AutoscaleProfileData : AutoscaleProfileProtocol {
    public var name: String
    public var capacity: ScaleCapacityProtocol
    public var rules: [ScaleRuleProtocol]
    public var fixedDate: TimeWindowProtocol?
    public var recurrence: RecurrenceProtocol?

        enum CodingKeys: String, CodingKey {case name = "name"
        case capacity = "capacity"
        case rules = "rules"
        case fixedDate = "fixedDate"
        case recurrence = "recurrence"
        }

  public init(name: String, capacity: ScaleCapacityProtocol, rules: [ScaleRuleProtocol])  {
    self.name = name
    self.capacity = capacity
    self.rules = rules
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    self.capacity = try container.decode(ScaleCapacityData.self, forKey: .capacity)
    self.rules = try container.decode([ScaleRuleData].self, forKey: .rules)
    if container.contains(.fixedDate) {
        self.fixedDate = try container.decode(TimeWindowData?.self, forKey: .fixedDate)
    }
    if container.contains(.recurrence) {
        self.recurrence = try container.decode(RecurrenceData?.self, forKey: .recurrence)
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
    try container.encode(self.name, forKey: .name)
    try container.encode(self.capacity as! ScaleCapacityData, forKey: .capacity)
    try container.encode(self.rules as! [ScaleRuleData], forKey: .rules)
    if self.fixedDate != nil {try container.encode(self.fixedDate as! TimeWindowData?, forKey: .fixedDate)}
    if self.recurrence != nil {try container.encode(self.recurrence as! RecurrenceData?, forKey: .recurrence)}
  }
}

extension DataFactory {
  public static func createAutoscaleProfileProtocol(name: String, capacity: ScaleCapacityProtocol, rules: [ScaleRuleProtocol]) -> AutoscaleProfileProtocol {
    return AutoscaleProfileData(name: name, capacity: capacity, rules: rules)
  }
}
