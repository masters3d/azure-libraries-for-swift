// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NotificationData : NotificationProtocol {
    public var enabled: Bool
    public var _operator: OperatorTypeEnum
    public var threshold: Decimal
    public var contactEmails: [String]
    public var contactRoles: [String]?
    public var contactGroups: [String]?

        enum CodingKeys: String, CodingKey {case enabled = "enabled"
        case _operator = "operator"
        case threshold = "threshold"
        case contactEmails = "contactEmails"
        case contactRoles = "contactRoles"
        case contactGroups = "contactGroups"
        }

  public init(enabled: Bool, _operator: OperatorTypeEnum, threshold: Decimal, contactEmails: [String]) {
    self.enabled = enabled
    self._operator = _operator
    self.threshold = threshold
    self.contactEmails = contactEmails
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.enabled = try container.decode(Bool.self, forKey: .enabled)
    self._operator = try container.decode(OperatorTypeEnum.self, forKey: ._operator)
    self.threshold = try container.decode(Decimal.self, forKey: .threshold)
    self.contactEmails = try container.decode([String].self, forKey: .contactEmails)
    if container.contains(.contactRoles) {
        self.contactRoles = try container.decode([String]?.self, forKey: .contactRoles)
    }
    if container.contains(.contactGroups) {
        self.contactGroups = try container.decode([String]?.self, forKey: .contactGroups)
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
    try container.encode(self.enabled, forKey: .enabled)
    try container.encode(self._operator, forKey: ._operator)
    try container.encode(self.threshold, forKey: .threshold)
    try container.encode(self.contactEmails as! [String], forKey: .contactEmails)
    if self.contactRoles != nil { try container.encode(self.contactRoles as! [String]?, forKey: .contactRoles) }
    if self.contactGroups != nil { try container.encode(self.contactGroups as! [String]?, forKey: .contactGroups) }
  }
}

extension DataFactory {
  public static func createNotificationProtocol(enabled: Bool, _operator: OperatorTypeEnum, threshold: Decimal, contactEmails: [String]) -> NotificationProtocol {
    return NotificationData(enabled: enabled, _operator: _operator, threshold: threshold, contactEmails: contactEmails)
  }
}
