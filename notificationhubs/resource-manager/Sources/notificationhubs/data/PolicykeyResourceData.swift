// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PolicykeyResourceData : PolicykeyResourceProtocol {
    public var policyKey: String?

        enum CodingKeys: String, CodingKey {case policyKey = "policyKey"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.policyKey) {
        self.policyKey = try container.decode(String?.self, forKey: .policyKey)
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
    if self.policyKey != nil {try container.encode(self.policyKey, forKey: .policyKey)}
  }
}

extension DataFactory {
  public static func createPolicykeyResourceProtocol() -> PolicykeyResourceProtocol {
    return PolicykeyResourceData()
  }
}
