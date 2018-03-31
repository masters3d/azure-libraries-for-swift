// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RoleData : RoleProtocol {
    public var roleName: String?
    public var description: String?

        enum CodingKeys: String, CodingKey {case roleName = "roleName"
        case description = "description"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.roleName) {
        self.roleName = try container.decode(String?.self, forKey: .roleName)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
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
    if self.roleName != nil { try container.encode(self.roleName, forKey: .roleName) }
    if self.description != nil { try container.encode(self.description, forKey: .description) }
  }
}

extension DataFactory {
  public static func createRoleProtocol() -> RoleProtocol {
    return RoleData()
  }
}
