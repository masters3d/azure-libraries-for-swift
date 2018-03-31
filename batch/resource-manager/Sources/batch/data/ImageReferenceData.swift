// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ImageReferenceData : ImageReferenceProtocol {
    public var publisher: String?
    public var offer: String?
    public var sku: String?
    public var version: String?
    public var id: String?

        enum CodingKeys: String, CodingKey {case publisher = "publisher"
        case offer = "offer"
        case sku = "sku"
        case version = "version"
        case id = "id"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.publisher) {
        self.publisher = try container.decode(String?.self, forKey: .publisher)
    }
    if container.contains(.offer) {
        self.offer = try container.decode(String?.self, forKey: .offer)
    }
    if container.contains(.sku) {
        self.sku = try container.decode(String?.self, forKey: .sku)
    }
    if container.contains(.version) {
        self.version = try container.decode(String?.self, forKey: .version)
    }
    if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
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
    if self.publisher != nil { try container.encode(self.publisher, forKey: .publisher) }
    if self.offer != nil { try container.encode(self.offer, forKey: .offer) }
    if self.sku != nil { try container.encode(self.sku, forKey: .sku) }
    if self.version != nil { try container.encode(self.version, forKey: .version) }
    if self.id != nil { try container.encode(self.id, forKey: .id) }
  }
}

extension DataFactory {
  public static func createImageReferenceProtocol() -> ImageReferenceProtocol {
    return ImageReferenceData()
  }
}
