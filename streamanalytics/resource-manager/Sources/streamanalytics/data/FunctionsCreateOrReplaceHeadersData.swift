// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FunctionsCreateOrReplaceHeadersData : FunctionsCreateOrReplaceHeadersProtocol {
    public var eTag: String?

        enum CodingKeys: String, CodingKey {case eTag = "ETag"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.eTag) {
        self.eTag = try container.decode(String?.self, forKey: .eTag)
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
    if self.eTag != nil {try container.encode(self.eTag, forKey: .eTag)}
  }
}

extension DataFactory {
  public static func createFunctionsCreateOrReplaceHeadersProtocol() -> FunctionsCreateOrReplaceHeadersProtocol {
    return FunctionsCreateOrReplaceHeadersData()
  }
}
