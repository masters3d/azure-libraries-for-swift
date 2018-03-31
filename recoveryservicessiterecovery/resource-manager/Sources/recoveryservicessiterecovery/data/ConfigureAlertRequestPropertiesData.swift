// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ConfigureAlertRequestPropertiesData : ConfigureAlertRequestPropertiesProtocol {
    public var sendToOwners: String?
    public var customEmailAddresses: [String]?
    public var locale: String?

        enum CodingKeys: String, CodingKey {case sendToOwners = "sendToOwners"
        case customEmailAddresses = "customEmailAddresses"
        case locale = "locale"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sendToOwners) {
        self.sendToOwners = try container.decode(String?.self, forKey: .sendToOwners)
    }
    if container.contains(.customEmailAddresses) {
        self.customEmailAddresses = try container.decode([String]?.self, forKey: .customEmailAddresses)
    }
    if container.contains(.locale) {
        self.locale = try container.decode(String?.self, forKey: .locale)
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
    if self.sendToOwners != nil { try container.encode(self.sendToOwners, forKey: .sendToOwners) }
    if self.customEmailAddresses != nil { try container.encode(self.customEmailAddresses as! [String]?, forKey: .customEmailAddresses) }
    if self.locale != nil { try container.encode(self.locale, forKey: .locale) }
  }
}

extension DataFactory {
  public static func createConfigureAlertRequestPropertiesProtocol() -> ConfigureAlertRequestPropertiesProtocol {
    return ConfigureAlertRequestPropertiesData()
  }
}
