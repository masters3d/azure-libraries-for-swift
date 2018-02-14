// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EmailNotificationData : EmailNotificationProtocol {
    public var sendToSubscriptionAdministrator: Bool?
    public var sendToSubscriptionCoAdministrators: Bool?
    public var customEmails: [String]?

        enum CodingKeys: String, CodingKey {case sendToSubscriptionAdministrator = "sendToSubscriptionAdministrator"
        case sendToSubscriptionCoAdministrators = "sendToSubscriptionCoAdministrators"
        case customEmails = "customEmails"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sendToSubscriptionAdministrator) {
        self.sendToSubscriptionAdministrator = try container.decode(Bool?.self, forKey: .sendToSubscriptionAdministrator)
    }
    if container.contains(.sendToSubscriptionCoAdministrators) {
        self.sendToSubscriptionCoAdministrators = try container.decode(Bool?.self, forKey: .sendToSubscriptionCoAdministrators)
    }
    if container.contains(.customEmails) {
        self.customEmails = try container.decode([String]?.self, forKey: .customEmails)
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
    if self.sendToSubscriptionAdministrator != nil {try container.encode(self.sendToSubscriptionAdministrator, forKey: .sendToSubscriptionAdministrator)}
    if self.sendToSubscriptionCoAdministrators != nil {try container.encode(self.sendToSubscriptionCoAdministrators, forKey: .sendToSubscriptionCoAdministrators)}
    if self.customEmails != nil {try container.encode(self.customEmails as! [String]?, forKey: .customEmails)}
  }
}

extension DataFactory {
  public static func createEmailNotificationProtocol() -> EmailNotificationProtocol {
    return EmailNotificationData()
  }
}
