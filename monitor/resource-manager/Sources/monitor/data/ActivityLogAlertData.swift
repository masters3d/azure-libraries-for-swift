// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ActivityLogAlertData : ActivityLogAlertProtocol {
    public var scopes: [String]
    public var enabled: Bool?
    public var condition: ActivityLogAlertAllOfConditionProtocol
    public var actions: ActivityLogAlertActionListProtocol
    public var description: String?

        enum CodingKeys: String, CodingKey {case scopes = "scopes"
        case enabled = "enabled"
        case condition = "condition"
        case actions = "actions"
        case description = "description"
        }

  public init(scopes: [String], condition: ActivityLogAlertAllOfConditionProtocol, actions: ActivityLogAlertActionListProtocol)  {
    self.scopes = scopes
    self.condition = condition
    self.actions = actions
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.scopes = try container.decode([String].self, forKey: .scopes)
    if container.contains(.enabled) {
        self.enabled = try container.decode(Bool?.self, forKey: .enabled)
    }
    self.condition = try container.decode(ActivityLogAlertAllOfConditionData.self, forKey: .condition)
    self.actions = try container.decode(ActivityLogAlertActionListData.self, forKey: .actions)
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
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
    try container.encode(self.scopes as! [String], forKey: .scopes)
    if self.enabled != nil {try container.encode(self.enabled, forKey: .enabled)}
    try container.encode(self.condition as! ActivityLogAlertAllOfConditionData, forKey: .condition)
    try container.encode(self.actions as! ActivityLogAlertActionListData, forKey: .actions)
    if self.description != nil {try container.encode(self.description, forKey: .description)}
  }
}

extension DataFactory {
  public static func createActivityLogAlertProtocol(scopes: [String], condition: ActivityLogAlertAllOfConditionProtocol, actions: ActivityLogAlertActionListProtocol) -> ActivityLogAlertProtocol {
    return ActivityLogAlertData(scopes: scopes, condition: condition, actions: actions)
  }
}
