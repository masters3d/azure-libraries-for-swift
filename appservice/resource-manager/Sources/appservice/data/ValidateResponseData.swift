// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ValidateResponseData : ValidateResponseProtocol {
    public var status: String?
    public var error: ValidateResponseErrorProtocol?

        enum CodingKeys: String, CodingKey {case status = "status"
        case error = "error"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.status) {
        self.status = try container.decode(String?.self, forKey: .status)
    }
    if container.contains(.error) {
        self.error = try container.decode(ValidateResponseErrorData?.self, forKey: .error)
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
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.error != nil {try container.encode(self.error as! ValidateResponseErrorData?, forKey: .error)}
  }
}

extension DataFactory {
  public static func createValidateResponseProtocol() -> ValidateResponseProtocol {
    return ValidateResponseData()
  }
}
