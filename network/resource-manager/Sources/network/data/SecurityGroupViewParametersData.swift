// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SecurityGroupViewParametersData : SecurityGroupViewParametersProtocol {
    public var targetResourceId: String

        enum CodingKeys: String, CodingKey {case targetResourceId = "targetResourceId"
        }

  public init(targetResourceId: String)  {
    self.targetResourceId = targetResourceId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.targetResourceId = try container.decode(String.self, forKey: .targetResourceId)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.targetResourceId, forKey: .targetResourceId)
  }
}

extension DataFactory {
  public static func createSecurityGroupViewParametersProtocol(targetResourceId: String) -> SecurityGroupViewParametersProtocol {
    return SecurityGroupViewParametersData(targetResourceId: targetResourceId)
  }
}
