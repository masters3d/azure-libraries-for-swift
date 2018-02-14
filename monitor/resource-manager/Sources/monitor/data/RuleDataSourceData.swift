// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RuleDataSourceData : RuleDataSourceProtocol {
    public var resourceUri: String?

        enum CodingKeys: String, CodingKey {case resourceUri = "resourceUri"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.resourceUri) {
        self.resourceUri = try container.decode(String?.self, forKey: .resourceUri)
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
    if self.resourceUri != nil {try container.encode(self.resourceUri, forKey: .resourceUri)}
  }
}

extension DataFactory {
  public static func createRuleDataSourceProtocol() -> RuleDataSourceProtocol {
    return RuleDataSourceData()
  }
}
