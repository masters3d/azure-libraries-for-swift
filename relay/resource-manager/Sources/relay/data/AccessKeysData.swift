// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AccessKeysData : AccessKeysProtocol {
    public var primaryConnectionString: String?
    public var secondaryConnectionString: String?
    public var primaryKey: String?
    public var secondaryKey: String?
    public var keyName: String?

        enum CodingKeys: String, CodingKey {case primaryConnectionString = "primaryConnectionString"
        case secondaryConnectionString = "secondaryConnectionString"
        case primaryKey = "primaryKey"
        case secondaryKey = "secondaryKey"
        case keyName = "keyName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.primaryConnectionString) {
        self.primaryConnectionString = try container.decode(String?.self, forKey: .primaryConnectionString)
    }
    if container.contains(.secondaryConnectionString) {
        self.secondaryConnectionString = try container.decode(String?.self, forKey: .secondaryConnectionString)
    }
    if container.contains(.primaryKey) {
        self.primaryKey = try container.decode(String?.self, forKey: .primaryKey)
    }
    if container.contains(.secondaryKey) {
        self.secondaryKey = try container.decode(String?.self, forKey: .secondaryKey)
    }
    if container.contains(.keyName) {
        self.keyName = try container.decode(String?.self, forKey: .keyName)
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
    if self.primaryConnectionString != nil {try container.encode(self.primaryConnectionString, forKey: .primaryConnectionString)}
    if self.secondaryConnectionString != nil {try container.encode(self.secondaryConnectionString, forKey: .secondaryConnectionString)}
    if self.primaryKey != nil {try container.encode(self.primaryKey, forKey: .primaryKey)}
    if self.secondaryKey != nil {try container.encode(self.secondaryKey, forKey: .secondaryKey)}
    if self.keyName != nil {try container.encode(self.keyName, forKey: .keyName)}
  }
}

extension DataFactory {
  public static func createAccessKeysProtocol() -> AccessKeysProtocol {
    return AccessKeysData()
  }
}
