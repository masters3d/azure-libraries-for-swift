// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BackupLongTermRetentionVaultData : BackupLongTermRetentionVaultProtocol, ProxyResourceProtocol, ResourceProtocol {
    public var id: String?
    public var name: String?
    public var type: String?
    public var location: String?
    public var properties: BackupLongTermRetentionVaultPropertiesProtocol?

        enum CodingKeys: String, CodingKey {case id = "id"
        case name = "name"
        case type = "type"
        case location = "location"
        case properties = "properties"
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
    if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
    }
    if container.contains(.location) {
        self.location = try container.decode(String?.self, forKey: .location)
    }
    if container.contains(.properties) {
        self.properties = try container.decode(BackupLongTermRetentionVaultPropertiesData?.self, forKey: .properties)
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
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.location != nil {try container.encode(self.location, forKey: .location)}
    if self.properties != nil {try container.encode(self.properties as! BackupLongTermRetentionVaultPropertiesData?, forKey: .properties)}
  }
}

extension DataFactory {
  public static func createBackupLongTermRetentionVaultProtocol() -> BackupLongTermRetentionVaultProtocol {
    return BackupLongTermRetentionVaultData()
  }
}
