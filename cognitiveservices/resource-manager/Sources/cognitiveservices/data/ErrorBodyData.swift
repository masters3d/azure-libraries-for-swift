// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ErrorBodyData : ErrorBodyProtocol {
    public var code: String
    public var message: String

        enum CodingKeys: String, CodingKey {case code = "code"
        case message = "message"
        }

  public init(code: String, message: String)  {
    self.code = code
    self.message = message
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.code = try container.decode(String.self, forKey: .code)
    self.message = try container.decode(String.self, forKey: .message)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.code, forKey: .code)
    try container.encode(self.message, forKey: .message)
  }
}

extension DataFactory {
  public static func createErrorBodyProtocol(code: String, message: String) -> ErrorBodyProtocol {
    return ErrorBodyData(code: code, message: message)
  }
}
