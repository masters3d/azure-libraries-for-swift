// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ShutdownNotificationContentData : ShutdownNotificationContentProtocol {
    public var skipUrl: String?
    public var delayUrl60: String?
    public var delayUrl120: String?
    public var vmName: String?
    public var guid: String?
    public var owner: String?
    public var eventType: String?
    public var text: String?
    public var subscriptionId: String?
    public var resourceGroupName: String?
    public var labName: String?

        enum CodingKeys: String, CodingKey {case skipUrl = "skipUrl"
        case delayUrl60 = "delayUrl60"
        case delayUrl120 = "delayUrl120"
        case vmName = "vmName"
        case guid = "guid"
        case owner = "owner"
        case eventType = "eventType"
        case text = "text"
        case subscriptionId = "subscriptionId"
        case resourceGroupName = "resourceGroupName"
        case labName = "labName"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.skipUrl) {
        self.skipUrl = try container.decode(String?.self, forKey: .skipUrl)
    }
    if container.contains(.delayUrl60) {
        self.delayUrl60 = try container.decode(String?.self, forKey: .delayUrl60)
    }
    if container.contains(.delayUrl120) {
        self.delayUrl120 = try container.decode(String?.self, forKey: .delayUrl120)
    }
    if container.contains(.vmName) {
        self.vmName = try container.decode(String?.self, forKey: .vmName)
    }
    if container.contains(.guid) {
        self.guid = try container.decode(String?.self, forKey: .guid)
    }
    if container.contains(.owner) {
        self.owner = try container.decode(String?.self, forKey: .owner)
    }
    if container.contains(.eventType) {
        self.eventType = try container.decode(String?.self, forKey: .eventType)
    }
    if container.contains(.text) {
        self.text = try container.decode(String?.self, forKey: .text)
    }
    if container.contains(.subscriptionId) {
        self.subscriptionId = try container.decode(String?.self, forKey: .subscriptionId)
    }
    if container.contains(.resourceGroupName) {
        self.resourceGroupName = try container.decode(String?.self, forKey: .resourceGroupName)
    }
    if container.contains(.labName) {
        self.labName = try container.decode(String?.self, forKey: .labName)
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
    if self.skipUrl != nil { try container.encode(self.skipUrl, forKey: .skipUrl) }
    if self.delayUrl60 != nil { try container.encode(self.delayUrl60, forKey: .delayUrl60) }
    if self.delayUrl120 != nil { try container.encode(self.delayUrl120, forKey: .delayUrl120) }
    if self.vmName != nil { try container.encode(self.vmName, forKey: .vmName) }
    if self.guid != nil { try container.encode(self.guid, forKey: .guid) }
    if self.owner != nil { try container.encode(self.owner, forKey: .owner) }
    if self.eventType != nil { try container.encode(self.eventType, forKey: .eventType) }
    if self.text != nil { try container.encode(self.text, forKey: .text) }
    if self.subscriptionId != nil { try container.encode(self.subscriptionId, forKey: .subscriptionId) }
    if self.resourceGroupName != nil { try container.encode(self.resourceGroupName, forKey: .resourceGroupName) }
    if self.labName != nil { try container.encode(self.labName, forKey: .labName) }
  }
}

extension DataFactory {
  public static func createShutdownNotificationContentProtocol() -> ShutdownNotificationContentProtocol {
    return ShutdownNotificationContentData()
  }
}
