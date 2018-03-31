// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TransformationPropertiesData : TransformationPropertiesProtocol {
    public var streamingUnits: Int32?
    public var query: String?
    public var etag: String?

        enum CodingKeys: String, CodingKey {case streamingUnits = "streamingUnits"
        case query = "query"
        case etag = "etag"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.streamingUnits) {
        self.streamingUnits = try container.decode(Int32?.self, forKey: .streamingUnits)
    }
    if container.contains(.query) {
        self.query = try container.decode(String?.self, forKey: .query)
    }
    if container.contains(.etag) {
        self.etag = try container.decode(String?.self, forKey: .etag)
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
    if self.streamingUnits != nil { try container.encode(self.streamingUnits, forKey: .streamingUnits) }
    if self.query != nil { try container.encode(self.query, forKey: .query) }
    if self.etag != nil { try container.encode(self.etag, forKey: .etag) }
  }
}

extension DataFactory {
  public static func createTransformationPropertiesProtocol() -> TransformationPropertiesProtocol {
    return TransformationPropertiesData()
  }
}
