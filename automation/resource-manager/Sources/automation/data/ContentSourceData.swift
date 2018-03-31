// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ContentSourceData : ContentSourceProtocol {
    public var hash: ContentHashProtocol?
    public var type: ContentSourceTypeEnum?
    public var value: String?
    public var version: String?

        enum CodingKeys: String, CodingKey {case hash = "hash"
        case type = "type"
        case value = "value"
        case version = "version"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.hash) {
        self.hash = try container.decode(ContentHashData?.self, forKey: .hash)
    }
    if container.contains(.type) {
        self.type = try container.decode(ContentSourceTypeEnum?.self, forKey: .type)
    }
    if container.contains(.value) {
        self.value = try container.decode(String?.self, forKey: .value)
    }
    if container.contains(.version) {
        self.version = try container.decode(String?.self, forKey: .version)
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
    if self.hash != nil { try container.encode(self.hash as! ContentHashData?, forKey: .hash) }
    if self.type != nil { try container.encode(self.type, forKey: .type) }
    if self.value != nil { try container.encode(self.value, forKey: .value) }
    if self.version != nil { try container.encode(self.version, forKey: .version) }
  }
}

extension DataFactory {
  public static func createContentSourceProtocol() -> ContentSourceProtocol {
    return ContentSourceData()
  }
}
