// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InnerErrorData : InnerErrorProtocol {
    public var exceptiontype: String?
    public var errordetail: String?

        enum CodingKeys: String, CodingKey {case exceptiontype = "exceptiontype"
        case errordetail = "errordetail"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.exceptiontype) {
        self.exceptiontype = try container.decode(String?.self, forKey: .exceptiontype)
    }
    if container.contains(.errordetail) {
        self.errordetail = try container.decode(String?.self, forKey: .errordetail)
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
    if self.exceptiontype != nil {try container.encode(self.exceptiontype, forKey: .exceptiontype)}
    if self.errordetail != nil {try container.encode(self.errordetail, forKey: .errordetail)}
  }
}

extension DataFactory {
  public static func createInnerErrorProtocol() -> InnerErrorProtocol {
    return InnerErrorData()
  }
}
