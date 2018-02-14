// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CsmPublishingProfileOptionsData : CsmPublishingProfileOptionsProtocol {
    public var format: PublishingProfileFormatEnum?

        enum CodingKeys: String, CodingKey {case format = "format"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.format) {
        self.format = try container.decode(PublishingProfileFormatEnum?.self, forKey: .format)
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
    if self.format != nil {try container.encode(self.format, forKey: .format)}
  }
}

extension DataFactory {
  public static func createCsmPublishingProfileOptionsProtocol() -> CsmPublishingProfileOptionsProtocol {
    return CsmPublishingProfileOptionsData()
  }
}
