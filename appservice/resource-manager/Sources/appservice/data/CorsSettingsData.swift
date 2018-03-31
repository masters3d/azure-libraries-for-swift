// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CorsSettingsData : CorsSettingsProtocol {
    public var allowedOrigins: [String]?

        enum CodingKeys: String, CodingKey {case allowedOrigins = "allowedOrigins"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.allowedOrigins) {
        self.allowedOrigins = try container.decode([String]?.self, forKey: .allowedOrigins)
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
    if self.allowedOrigins != nil {try container.encode(self.allowedOrigins as! [String]?, forKey: .allowedOrigins)}
  }
}

extension DataFactory {
  public static func createCorsSettingsProtocol() -> CorsSettingsProtocol {
    return CorsSettingsData()
  }
}
