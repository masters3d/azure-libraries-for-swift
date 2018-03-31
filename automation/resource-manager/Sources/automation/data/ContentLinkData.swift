// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ContentLinkData : ContentLinkProtocol {
    public var uri: String?
    public var contentHash: ContentHashProtocol?
    public var version: String?

        enum CodingKeys: String, CodingKey {case uri = "uri"
        case contentHash = "contentHash"
        case version = "version"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.uri) {
        self.uri = try container.decode(String?.self, forKey: .uri)
    }
    if container.contains(.contentHash) {
        self.contentHash = try container.decode(ContentHashData?.self, forKey: .contentHash)
    }
    if container.contains(.version) {
        self.version = try container.decode(String?.self, forKey: .version)
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
    if self.uri != nil {try container.encode(self.uri, forKey: .uri)}
    if self.contentHash != nil {try container.encode(self.contentHash as! ContentHashData?, forKey: .contentHash)}
    if self.version != nil {try container.encode(self.version, forKey: .version)}
  }
}

extension DataFactory {
  public static func createContentLinkProtocol() -> ContentLinkProtocol {
    return ContentLinkData()
  }
}
