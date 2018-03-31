// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ImageRegistryCredentialData : ImageRegistryCredentialProtocol {
    public var server: String
    public var username: String
    public var password: String?

        enum CodingKeys: String, CodingKey {case server = "server"
        case username = "username"
        case password = "password"
        }

  public init(server: String, username: String) {
    self.server = server
    self.username = username
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.server = try container.decode(String.self, forKey: .server)
    self.username = try container.decode(String.self, forKey: .username)
    if container.contains(.password) {
        self.password = try container.decode(String?.self, forKey: .password)
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
    try container.encode(self.server, forKey: .server)
    try container.encode(self.username, forKey: .username)
    if self.password != nil { try container.encode(self.password, forKey: .password) }
  }
}

extension DataFactory {
  public static func createImageRegistryCredentialProtocol(server: String, username: String) -> ImageRegistryCredentialProtocol {
    return ImageRegistryCredentialData(server: server, username: username)
  }
}
