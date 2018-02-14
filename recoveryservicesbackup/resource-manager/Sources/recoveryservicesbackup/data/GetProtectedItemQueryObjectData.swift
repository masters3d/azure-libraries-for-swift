// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GetProtectedItemQueryObjectData : GetProtectedItemQueryObjectProtocol {
    public var expand: String?

        enum CodingKeys: String, CodingKey {case expand = "expand"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.expand) {
        self.expand = try container.decode(String?.self, forKey: .expand)
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
    if self.expand != nil {try container.encode(self.expand, forKey: .expand)}
  }
}

extension DataFactory {
  public static func createGetProtectedItemQueryObjectProtocol() -> GetProtectedItemQueryObjectProtocol {
    return GetProtectedItemQueryObjectData()
  }
}
