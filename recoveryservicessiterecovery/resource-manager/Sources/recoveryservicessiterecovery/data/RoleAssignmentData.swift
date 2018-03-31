// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RoleAssignmentData : RoleAssignmentProtocol {
    public var id: String?
    public var name: String?
    public var scope: String?
    public var principalId: String?
    public var roleDefinitionId: String?

        enum CodingKeys: String, CodingKey {case id = "id"
        case name = "name"
        case scope = "scope"
        case principalId = "principalId"
        case roleDefinitionId = "roleDefinitionId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.scope) {
        self.scope = try container.decode(String?.self, forKey: .scope)
    }
    if container.contains(.principalId) {
        self.principalId = try container.decode(String?.self, forKey: .principalId)
    }
    if container.contains(.roleDefinitionId) {
        self.roleDefinitionId = try container.decode(String?.self, forKey: .roleDefinitionId)
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
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.scope != nil {try container.encode(self.scope, forKey: .scope)}
    if self.principalId != nil {try container.encode(self.principalId, forKey: .principalId)}
    if self.roleDefinitionId != nil {try container.encode(self.roleDefinitionId, forKey: .roleDefinitionId)}
  }
}

extension DataFactory {
  public static func createRoleAssignmentProtocol() -> RoleAssignmentProtocol {
    return RoleAssignmentData()
  }
}
