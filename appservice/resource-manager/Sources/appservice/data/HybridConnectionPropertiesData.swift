// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HybridConnectionPropertiesData : HybridConnectionPropertiesProtocol {
    public var serviceBusNamespace: String?
    public var relayName: String?
    public var relayArmUri: String?
    public var hostname: String?
    public var port: Int32?
    public var sendKeyName: String?
    public var sendKeyValue: String?
    public var serviceBusSuffix: String?

        enum CodingKeys: String, CodingKey {case serviceBusNamespace = "serviceBusNamespace"
        case relayName = "relayName"
        case relayArmUri = "relayArmUri"
        case hostname = "hostname"
        case port = "port"
        case sendKeyName = "sendKeyName"
        case sendKeyValue = "sendKeyValue"
        case serviceBusSuffix = "serviceBusSuffix"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.serviceBusNamespace) {
        self.serviceBusNamespace = try container.decode(String?.self, forKey: .serviceBusNamespace)
    }
    if container.contains(.relayName) {
        self.relayName = try container.decode(String?.self, forKey: .relayName)
    }
    if container.contains(.relayArmUri) {
        self.relayArmUri = try container.decode(String?.self, forKey: .relayArmUri)
    }
    if container.contains(.hostname) {
        self.hostname = try container.decode(String?.self, forKey: .hostname)
    }
    if container.contains(.port) {
        self.port = try container.decode(Int32?.self, forKey: .port)
    }
    if container.contains(.sendKeyName) {
        self.sendKeyName = try container.decode(String?.self, forKey: .sendKeyName)
    }
    if container.contains(.sendKeyValue) {
        self.sendKeyValue = try container.decode(String?.self, forKey: .sendKeyValue)
    }
    if container.contains(.serviceBusSuffix) {
        self.serviceBusSuffix = try container.decode(String?.self, forKey: .serviceBusSuffix)
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
    if self.serviceBusNamespace != nil { try container.encode(self.serviceBusNamespace, forKey: .serviceBusNamespace) }
    if self.relayName != nil { try container.encode(self.relayName, forKey: .relayName) }
    if self.relayArmUri != nil { try container.encode(self.relayArmUri, forKey: .relayArmUri) }
    if self.hostname != nil { try container.encode(self.hostname, forKey: .hostname) }
    if self.port != nil { try container.encode(self.port, forKey: .port) }
    if self.sendKeyName != nil { try container.encode(self.sendKeyName, forKey: .sendKeyName) }
    if self.sendKeyValue != nil { try container.encode(self.sendKeyValue, forKey: .sendKeyValue) }
    if self.serviceBusSuffix != nil { try container.encode(self.serviceBusSuffix, forKey: .serviceBusSuffix) }
  }
}

extension DataFactory {
  public static func createHybridConnectionPropertiesProtocol() -> HybridConnectionPropertiesProtocol {
    return HybridConnectionPropertiesData()
  }
}
