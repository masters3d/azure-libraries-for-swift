// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ErrorDetailsData : ErrorDetailsProtocol {
    public var code: String?
    public var message: String?

        enum CodingKeys: String, CodingKey {case code = "code"
        case message = "message"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.code) {
        self.code = try container.decode(String?.self, forKey: .code)
    }
    if container.contains(.message) {
        self.message = try container.decode(String?.self, forKey: .message)
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
    if self.code != nil {try container.encode(self.code, forKey: .code)}
    if self.message != nil {try container.encode(self.message, forKey: .message)}
  }
}

extension DataFactory {
  public static func createErrorDetailsProtocol() -> ErrorDetailsProtocol {
    return ErrorDetailsData()
  }
}
