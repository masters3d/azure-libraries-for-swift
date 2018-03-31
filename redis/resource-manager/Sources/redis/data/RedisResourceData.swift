// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RedisResourceData : RedisResourceProtocol, TrackedResourceProtocol, ResourceProtocol {
    public var id: String?
    public var name: String?
    public var type: String?
    public var tags: [String:String]?
    public var location: String
    public var properties: RedisPropertiesProtocol
    public var zones: [String]?

        enum CodingKeys: String, CodingKey {case id = "id"
        case name = "name"
        case type = "type"
        case tags = "tags"
        case location = "location"
        case properties = "properties"
        case zones = "zones"
        }

  public init(location: String, properties: RedisPropertiesProtocol) {
    self.location = location
    self.properties = properties
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
    if container.contains(.tags) {
        self.tags = try container.decode([String:String]?.self, forKey: .tags)
    }
    self.location = try container.decode(String.self, forKey: .location)
    self.properties = try container.decode(RedisPropertiesData.self, forKey: .properties)
    if container.contains(.zones) {
        self.zones = try container.decode([String]?.self, forKey: .zones)
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
    if self.id != nil { try container.encode(self.id, forKey: .id) }
    if self.name != nil { try container.encode(self.name, forKey: .name) }
    if self.type != nil { try container.encode(self.type, forKey: .type) }
    if self.tags != nil { try container.encode(self.tags, forKey: .tags) }
    try container.encode(self.location, forKey: .location)
    try container.encode(self.properties as! RedisPropertiesData, forKey: .properties)
    if self.zones != nil { try container.encode(self.zones as! [String]?, forKey: .zones) }
  }
}

extension DataFactory {
  public static func createRedisResourceProtocol(location: String, properties: RedisPropertiesProtocol) -> RedisResourceProtocol {
    return RedisResourceData(location: location, properties: properties)
  }
}
