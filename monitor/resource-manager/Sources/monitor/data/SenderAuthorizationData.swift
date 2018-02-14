// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SenderAuthorizationData : SenderAuthorizationProtocol {
    public var action: String?
    public var role: String?
    public var scope: String?

        enum CodingKeys: String, CodingKey {case action = "action"
        case role = "role"
        case scope = "scope"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.action) {
        self.action = try container.decode(String?.self, forKey: .action)
    }
    if container.contains(.role) {
        self.role = try container.decode(String?.self, forKey: .role)
    }
    if container.contains(.scope) {
        self.scope = try container.decode(String?.self, forKey: .scope)
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
    if self.action != nil {try container.encode(self.action, forKey: .action)}
    if self.role != nil {try container.encode(self.role, forKey: .role)}
    if self.scope != nil {try container.encode(self.scope, forKey: .scope)}
  }
}

extension DataFactory {
  public static func createSenderAuthorizationProtocol() -> SenderAuthorizationProtocol {
    return SenderAuthorizationData()
  }
}