// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AddressSpaceData : AddressSpaceProtocol {
    public var addressPrefixes: [String]?

        enum CodingKeys: String, CodingKey {case addressPrefixes = "addressPrefixes"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.addressPrefixes) {
        self.addressPrefixes = try container.decode([String]?.self, forKey: .addressPrefixes)
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
    if self.addressPrefixes != nil { try container.encode(self.addressPrefixes as! [String]?, forKey: .addressPrefixes) }
  }
}

extension DataFactory {
  public static func createAddressSpaceProtocol() -> AddressSpaceProtocol {
    return AddressSpaceData()
  }
}
