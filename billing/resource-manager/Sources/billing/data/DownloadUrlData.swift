// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DownloadUrlData : DownloadUrlProtocol {
    public var expiryTime: Date?
    public var url: String?

        enum CodingKeys: String, CodingKey {case expiryTime = "expiryTime"
        case url = "url"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.expiryTime) {
        self.expiryTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .expiryTime)), format: .dateTime)
    }
    if container.contains(.url) {
        self.url = try container.decode(String?.self, forKey: .url)
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
    if self.expiryTime != nil {
        try container.encode(DateConverter.toString(date: self.expiryTime!, format: .dateTime), forKey: .expiryTime)
    }
    if self.url != nil {try container.encode(self.url, forKey: .url)}
  }
}

extension DataFactory {
  public static func createDownloadUrlProtocol() -> DownloadUrlProtocol {
    return DownloadUrlData()
  }
}
