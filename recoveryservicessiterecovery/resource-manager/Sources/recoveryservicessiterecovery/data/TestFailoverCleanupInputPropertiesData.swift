// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TestFailoverCleanupInputPropertiesData : TestFailoverCleanupInputPropertiesProtocol {
    public var comments: String?

        enum CodingKeys: String, CodingKey {case comments = "comments"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.comments) {
        self.comments = try container.decode(String?.self, forKey: .comments)
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
    if self.comments != nil { try container.encode(self.comments, forKey: .comments) }
  }
}

extension DataFactory {
  public static func createTestFailoverCleanupInputPropertiesProtocol() -> TestFailoverCleanupInputPropertiesProtocol {
    return TestFailoverCleanupInputPropertiesData()
  }
}
