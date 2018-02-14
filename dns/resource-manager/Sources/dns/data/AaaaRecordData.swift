// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AaaaRecordData : AaaaRecordProtocol {
    public var ipv6Address: String?

        enum CodingKeys: String, CodingKey {case ipv6Address = "ipv6Address"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.ipv6Address) {
        self.ipv6Address = try container.decode(String?.self, forKey: .ipv6Address)
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
    if self.ipv6Address != nil {try container.encode(self.ipv6Address, forKey: .ipv6Address)}
  }
}

extension DataFactory {
  public static func createAaaaRecordProtocol() -> AaaaRecordProtocol {
    return AaaaRecordData()
  }
}
