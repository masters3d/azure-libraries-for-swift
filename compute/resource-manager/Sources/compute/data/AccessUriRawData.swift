// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AccessUriRawData : AccessUriRawProtocol {
    public var accessSAS: String?

        enum CodingKeys: String, CodingKey {case accessSAS = "accessSAS"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.accessSAS) {
        self.accessSAS = try container.decode(String?.self, forKey: .accessSAS)
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
    if self.accessSAS != nil { try container.encode(self.accessSAS, forKey: .accessSAS) }
  }
}

extension DataFactory {
  public static func createAccessUriRawProtocol() -> AccessUriRawProtocol {
    return AccessUriRawData()
  }
}
