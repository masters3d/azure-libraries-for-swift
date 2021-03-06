// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DeleteCertificateErrorData : DeleteCertificateErrorProtocol {
    public var code: String
    public var message: String
    public var target: String?
    public var details: [DeleteCertificateErrorProtocol?]?

        enum CodingKeys: String, CodingKey {case code = "code"
        case message = "message"
        case target = "target"
        case details = "details"
        }

  public init(code: String, message: String)  {
    self.code = code
    self.message = message
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.code = try container.decode(String.self, forKey: .code)
    self.message = try container.decode(String.self, forKey: .message)
    if container.contains(.target) {
        self.target = try container.decode(String?.self, forKey: .target)
    }
    if container.contains(.details) {
        self.details = try container.decode([DeleteCertificateErrorData?]?.self, forKey: .details)
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
    try container.encode(self.code, forKey: .code)
    try container.encode(self.message, forKey: .message)
    if self.target != nil {try container.encode(self.target, forKey: .target)}
    if self.details != nil {try container.encode(self.details as! [DeleteCertificateErrorData?]?, forKey: .details)}
  }
}

extension DataFactory {
  public static func createDeleteCertificateErrorProtocol(code: String, message: String) -> DeleteCertificateErrorProtocol {
    return DeleteCertificateErrorData(code: code, message: message)
  }
}
