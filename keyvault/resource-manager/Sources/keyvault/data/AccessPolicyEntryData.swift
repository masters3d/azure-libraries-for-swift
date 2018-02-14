// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AccessPolicyEntryData : AccessPolicyEntryProtocol {
    public var tenantId: String
    public var objectId: String
    public var applicationId: String?
    public var permissions: PermissionsProtocol

        enum CodingKeys: String, CodingKey {case tenantId = "tenantId"
        case objectId = "objectId"
        case applicationId = "applicationId"
        case permissions = "permissions"
        }

  public init(tenantId: String, objectId: String, permissions: PermissionsProtocol)  {
    self.tenantId = tenantId
    self.objectId = objectId
    self.permissions = permissions
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.tenantId = try container.decode(String.self, forKey: .tenantId)
    self.objectId = try container.decode(String.self, forKey: .objectId)
    if container.contains(.applicationId) {
        self.applicationId = try container.decode(String?.self, forKey: .applicationId)
    }
    self.permissions = try container.decode(PermissionsData.self, forKey: .permissions)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.tenantId, forKey: .tenantId)
    try container.encode(self.objectId, forKey: .objectId)
    if self.applicationId != nil {try container.encode(self.applicationId, forKey: .applicationId)}
    try container.encode(self.permissions as! PermissionsData, forKey: .permissions)
  }
}

extension DataFactory {
  public static func createAccessPolicyEntryProtocol(tenantId: String, objectId: String, permissions: PermissionsProtocol) -> AccessPolicyEntryProtocol {
    return AccessPolicyEntryData(tenantId: tenantId, objectId: objectId, permissions: permissions)
  }
}
