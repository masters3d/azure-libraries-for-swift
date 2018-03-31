// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ServerDnsAliasPropertiesData : ServerDnsAliasPropertiesProtocol {
    public var azureDnsRecord: String?

        enum CodingKeys: String, CodingKey {case azureDnsRecord = "azureDnsRecord"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.azureDnsRecord) {
        self.azureDnsRecord = try container.decode(String?.self, forKey: .azureDnsRecord)
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
    if self.azureDnsRecord != nil {try container.encode(self.azureDnsRecord, forKey: .azureDnsRecord)}
  }
}

extension DataFactory {
  public static func createServerDnsAliasPropertiesProtocol() -> ServerDnsAliasPropertiesProtocol {
    return ServerDnsAliasPropertiesData()
  }
}
