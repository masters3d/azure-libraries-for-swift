// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ServiceBusAuthenticationData : ServiceBusAuthenticationProtocol {
    public var sasKey: String?
    public var sasKeyName: String?
    public var type: ServiceBusAuthenticationTypeEnum?

        enum CodingKeys: String, CodingKey {case sasKey = "sasKey"
        case sasKeyName = "sasKeyName"
        case type = "type"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sasKey) {
        self.sasKey = try container.decode(String?.self, forKey: .sasKey)
    }
    if container.contains(.sasKeyName) {
        self.sasKeyName = try container.decode(String?.self, forKey: .sasKeyName)
    }
    if container.contains(.type) {
        self.type = try container.decode(ServiceBusAuthenticationTypeEnum?.self, forKey: .type)
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
    if self.sasKey != nil {try container.encode(self.sasKey, forKey: .sasKey)}
    if self.sasKeyName != nil {try container.encode(self.sasKeyName, forKey: .sasKeyName)}
    if self.type != nil {try container.encode(self.type, forKey: .type)}
  }
}

extension DataFactory {
  public static func createServiceBusAuthenticationProtocol() -> ServiceBusAuthenticationProtocol {
    return ServiceBusAuthenticationData()
  }
}
