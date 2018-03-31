// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ProfilePropertiesData : ProfilePropertiesProtocol {
    public var resourceState: ProfileResourceStateEnum?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case resourceState = "resourceState"
        case provisioningState = "provisioningState"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.resourceState) {
        self.resourceState = try container.decode(ProfileResourceStateEnum?.self, forKey: .resourceState)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
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
    if self.resourceState != nil { try container.encode(self.resourceState, forKey: .resourceState) }
    if self.provisioningState != nil { try container.encode(self.provisioningState, forKey: .provisioningState) }
  }
}

extension DataFactory {
  public static func createProfilePropertiesProtocol() -> ProfilePropertiesProtocol {
    return ProfilePropertiesData()
  }
}
