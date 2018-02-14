// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AutoUserSpecificationData : AutoUserSpecificationProtocol {
    public var scope: AutoUserScopeEnum?
    public var elevationLevel: ElevationLevelEnum?

        enum CodingKeys: String, CodingKey {case scope = "scope"
        case elevationLevel = "elevationLevel"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.scope) {
        self.scope = try container.decode(AutoUserScopeEnum?.self, forKey: .scope)
    }
    if container.contains(.elevationLevel) {
        self.elevationLevel = try container.decode(ElevationLevelEnum?.self, forKey: .elevationLevel)
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
    if self.scope != nil {try container.encode(self.scope, forKey: .scope)}
    if self.elevationLevel != nil {try container.encode(self.elevationLevel, forKey: .elevationLevel)}
  }
}

extension DataFactory {
  public static func createAutoUserSpecificationProtocol() -> AutoUserSpecificationProtocol {
    return AutoUserSpecificationData()
  }
}
