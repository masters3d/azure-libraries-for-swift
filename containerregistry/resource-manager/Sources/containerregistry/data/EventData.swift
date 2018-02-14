// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EventData : EventProtocol, EventInfoProtocol {
    public var id: String?
    public var eventRequestMessage: EventRequestMessageProtocol?
    public var eventResponseMessage: EventResponseMessageProtocol?

        enum CodingKeys: String, CodingKey {case id = "id"
        case eventRequestMessage = "eventRequestMessage"
        case eventResponseMessage = "eventResponseMessage"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.eventRequestMessage) {
        self.eventRequestMessage = try container.decode(EventRequestMessageData?.self, forKey: .eventRequestMessage)
    }
    if container.contains(.eventResponseMessage) {
        self.eventResponseMessage = try container.decode(EventResponseMessageData?.self, forKey: .eventResponseMessage)
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
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.eventRequestMessage != nil {try container.encode(self.eventRequestMessage as! EventRequestMessageData?, forKey: .eventRequestMessage)}
    if self.eventResponseMessage != nil {try container.encode(self.eventResponseMessage as! EventResponseMessageData?, forKey: .eventResponseMessage)}
  }
}

extension DataFactory {
  public static func createEventProtocol() -> EventProtocol {
    return EventData()
  }
}
