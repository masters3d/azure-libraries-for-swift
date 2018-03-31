// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RunbookDraftReplaceContentHeadersData : RunbookDraftReplaceContentHeadersProtocol {
    public var location: String?

        enum CodingKeys: String, CodingKey {case location = "location"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.location) {
        self.location = try container.decode(String?.self, forKey: .location)
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
    if self.location != nil {try container.encode(self.location, forKey: .location)}
  }
}

extension DataFactory {
  public static func createRunbookDraftReplaceContentHeadersProtocol() -> RunbookDraftReplaceContentHeadersProtocol {
    return RunbookDraftReplaceContentHeadersData()
  }
}
