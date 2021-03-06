// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineIdentityData : VirtualMachineIdentityProtocol {
    public var principalId: String?
    public var tenantId: String?
    public var type: ResourceIdentityTypeEnum?
    public var identityIds: [String]?

        enum CodingKeys: String, CodingKey {case principalId = "principalId"
        case tenantId = "tenantId"
        case type = "type"
        case identityIds = "identityIds"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.principalId) {
        self.principalId = try container.decode(String?.self, forKey: .principalId)
    }
    if container.contains(.tenantId) {
        self.tenantId = try container.decode(String?.self, forKey: .tenantId)
    }
    if container.contains(.type) {
        self.type = try container.decode(ResourceIdentityTypeEnum?.self, forKey: .type)
    }
    if container.contains(.identityIds) {
        self.identityIds = try container.decode([String]?.self, forKey: .identityIds)
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
    if self.principalId != nil {try container.encode(self.principalId, forKey: .principalId)}
    if self.tenantId != nil {try container.encode(self.tenantId, forKey: .tenantId)}
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.identityIds != nil {try container.encode(self.identityIds as! [String]?, forKey: .identityIds)}
  }
}

extension DataFactory {
  public static func createVirtualMachineIdentityProtocol() -> VirtualMachineIdentityProtocol {
    return VirtualMachineIdentityData()
  }
}
