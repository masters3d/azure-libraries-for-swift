// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HybridConnectionKeyPropertiesData : HybridConnectionKeyPropertiesProtocol {
    public var sendKeyName: String?
    public var sendKeyValue: String?

        enum CodingKeys: String, CodingKey {case sendKeyName = "sendKeyName"
        case sendKeyValue = "sendKeyValue"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sendKeyName) {
        self.sendKeyName = try container.decode(String?.self, forKey: .sendKeyName)
    }
    if container.contains(.sendKeyValue) {
        self.sendKeyValue = try container.decode(String?.self, forKey: .sendKeyValue)
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
    if self.sendKeyName != nil {try container.encode(self.sendKeyName, forKey: .sendKeyName)}
    if self.sendKeyValue != nil {try container.encode(self.sendKeyValue, forKey: .sendKeyValue)}
  }
}

extension DataFactory {
  public static func createHybridConnectionKeyPropertiesProtocol() -> HybridConnectionKeyPropertiesProtocol {
    return HybridConnectionKeyPropertiesData()
  }
}
