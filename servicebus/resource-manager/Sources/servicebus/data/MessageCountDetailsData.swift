// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MessageCountDetailsData : MessageCountDetailsProtocol {
    public var activeMessageCount: Int64?
    public var deadLetterMessageCount: Int64?
    public var scheduledMessageCount: Int64?
    public var transferMessageCount: Int64?
    public var transferDeadLetterMessageCount: Int64?

        enum CodingKeys: String, CodingKey {case activeMessageCount = "activeMessageCount"
        case deadLetterMessageCount = "deadLetterMessageCount"
        case scheduledMessageCount = "scheduledMessageCount"
        case transferMessageCount = "transferMessageCount"
        case transferDeadLetterMessageCount = "transferDeadLetterMessageCount"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.activeMessageCount) {
        self.activeMessageCount = try container.decode(Int64?.self, forKey: .activeMessageCount)
    }
    if container.contains(.deadLetterMessageCount) {
        self.deadLetterMessageCount = try container.decode(Int64?.self, forKey: .deadLetterMessageCount)
    }
    if container.contains(.scheduledMessageCount) {
        self.scheduledMessageCount = try container.decode(Int64?.self, forKey: .scheduledMessageCount)
    }
    if container.contains(.transferMessageCount) {
        self.transferMessageCount = try container.decode(Int64?.self, forKey: .transferMessageCount)
    }
    if container.contains(.transferDeadLetterMessageCount) {
        self.transferDeadLetterMessageCount = try container.decode(Int64?.self, forKey: .transferDeadLetterMessageCount)
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
    if self.activeMessageCount != nil {try container.encode(self.activeMessageCount, forKey: .activeMessageCount)}
    if self.deadLetterMessageCount != nil {try container.encode(self.deadLetterMessageCount, forKey: .deadLetterMessageCount)}
    if self.scheduledMessageCount != nil {try container.encode(self.scheduledMessageCount, forKey: .scheduledMessageCount)}
    if self.transferMessageCount != nil {try container.encode(self.transferMessageCount, forKey: .transferMessageCount)}
    if self.transferDeadLetterMessageCount != nil {try container.encode(self.transferDeadLetterMessageCount, forKey: .transferDeadLetterMessageCount)}
  }
}

extension DataFactory {
  public static func createMessageCountDetailsProtocol() -> MessageCountDetailsProtocol {
    return MessageCountDetailsData()
  }
}
