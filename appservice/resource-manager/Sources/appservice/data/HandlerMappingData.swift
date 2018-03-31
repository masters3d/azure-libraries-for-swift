// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HandlerMappingData : HandlerMappingProtocol {
    public var _extension: String?
    public var scriptProcessor: String?
    public var arguments: String?

        enum CodingKeys: String, CodingKey {case _extension = "extension"
        case scriptProcessor = "scriptProcessor"
        case arguments = "arguments"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(._extension) {
        self._extension = try container.decode(String?.self, forKey: ._extension)
    }
    if container.contains(.scriptProcessor) {
        self.scriptProcessor = try container.decode(String?.self, forKey: .scriptProcessor)
    }
    if container.contains(.arguments) {
        self.arguments = try container.decode(String?.self, forKey: .arguments)
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
    if self._extension != nil {try container.encode(self._extension, forKey: ._extension)}
    if self.scriptProcessor != nil {try container.encode(self.scriptProcessor, forKey: .scriptProcessor)}
    if self.arguments != nil {try container.encode(self.arguments, forKey: .arguments)}
  }
}

extension DataFactory {
  public static func createHandlerMappingProtocol() -> HandlerMappingProtocol {
    return HandlerMappingData()
  }
}
