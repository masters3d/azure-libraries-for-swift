// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ErrorData : ErrorProtocol {
    public var code: String?
    public var message: String?
    public var target: String?
    public var details: [ErrorDetailProtocol?]?

        enum CodingKeys: String, CodingKey {case code = "code"
        case message = "message"
        case target = "target"
        case details = "details"
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
    if container.contains(.target) {
        self.target = try container.decode(String?.self, forKey: .target)
    }
    if container.contains(.details) {
        self.details = try container.decode([ErrorDetailData?]?.self, forKey: .details)
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
    if self.target != nil {try container.encode(self.target, forKey: .target)}
    if self.details != nil {try container.encode(self.details as! [ErrorDetailData?]?, forKey: .details)}
  }
}

extension DataFactory {
  public static func createErrorProtocol() -> ErrorProtocol {
    return ErrorData()
  }
}
