// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PurgeParametersData : PurgeParametersProtocol {
    public var contentPaths: [String]

        enum CodingKeys: String, CodingKey {case contentPaths = "contentPaths"
        }

  public init(contentPaths: [String]) {
    self.contentPaths = contentPaths
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.contentPaths = try container.decode([String].self, forKey: .contentPaths)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.contentPaths as! [String], forKey: .contentPaths)
  }
}

extension DataFactory {
  public static func createPurgeParametersProtocol(contentPaths: [String]) -> PurgeParametersProtocol {
    return PurgeParametersData(contentPaths: contentPaths)
  }
}
