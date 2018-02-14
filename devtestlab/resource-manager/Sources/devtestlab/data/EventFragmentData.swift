// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EventFragmentData : EventFragmentProtocol {
    public var eventName: NotificationChannelEventTypeEnum?

        enum CodingKeys: String, CodingKey {case eventName = "eventName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.eventName) {
        self.eventName = try container.decode(NotificationChannelEventTypeEnum?.self, forKey: .eventName)
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
    if self.eventName != nil {try container.encode(self.eventName, forKey: .eventName)}
  }
}

extension DataFactory {
  public static func createEventFragmentProtocol() -> EventFragmentProtocol {
    return EventFragmentData()
  }
}
