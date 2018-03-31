// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NotificationChannelPropertiesData : NotificationChannelPropertiesProtocol {
    public var webHookUrl: String?
    public var description: String?
    public var events: [EventProtocol?]?
    public var createdDate: Date?
    public var provisioningState: String?
    public var uniqueIdentifier: String?

        enum CodingKeys: String, CodingKey {case webHookUrl = "webHookUrl"
        case description = "description"
        case events = "events"
        case createdDate = "createdDate"
        case provisioningState = "provisioningState"
        case uniqueIdentifier = "uniqueIdentifier"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.webHookUrl) {
        self.webHookUrl = try container.decode(String?.self, forKey: .webHookUrl)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.events) {
        self.events = try container.decode([EventData?]?.self, forKey: .events)
    }
    if container.contains(.createdDate) {
        self.createdDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdDate)), format: .dateTime)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.uniqueIdentifier) {
        self.uniqueIdentifier = try container.decode(String?.self, forKey: .uniqueIdentifier)
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
    if self.webHookUrl != nil {try container.encode(self.webHookUrl, forKey: .webHookUrl)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.events != nil {try container.encode(self.events as! [EventData?]?, forKey: .events)}
    if self.createdDate != nil {
        try container.encode(DateConverter.toString(date: self.createdDate!, format: .dateTime), forKey: .createdDate)
    }
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.uniqueIdentifier != nil {try container.encode(self.uniqueIdentifier, forKey: .uniqueIdentifier)}
  }
}

extension DataFactory {
  public static func createNotificationChannelPropertiesProtocol() -> NotificationChannelPropertiesProtocol {
    return NotificationChannelPropertiesData()
  }
}
