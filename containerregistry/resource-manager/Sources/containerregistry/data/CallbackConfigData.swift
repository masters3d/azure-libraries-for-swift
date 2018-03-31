// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CallbackConfigData : CallbackConfigProtocol {
    public var serviceUri: String
    public var customHeaders: [String:String]?

        enum CodingKeys: String, CodingKey {case serviceUri = "serviceUri"
        case customHeaders = "customHeaders"
        }

  public init(serviceUri: String) {
    self.serviceUri = serviceUri
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.serviceUri = try container.decode(String.self, forKey: .serviceUri)
    if container.contains(.customHeaders) {
        self.customHeaders = try container.decode([String:String]?.self, forKey: .customHeaders)
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
    try container.encode(self.serviceUri, forKey: .serviceUri)
    if self.customHeaders != nil { try container.encode(self.customHeaders, forKey: .customHeaders) }
  }
}

extension DataFactory {
  public static func createCallbackConfigProtocol(serviceUri: String) -> CallbackConfigProtocol {
    return CallbackConfigData(serviceUri: serviceUri)
  }
}
