// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DiskData : DiskProtocol, ResourceProtocol {
    public var id: String?
    public var name: String?
    public var type: String?
    public var location: String
    public var tags: [String:String]?
    public var managedBy: String?
    public var sku: DiskSkuProtocol?
    public var zones: [String]?
    public var properties: DiskPropertiesProtocol?

        enum CodingKeys: String, CodingKey {case id = "id"
        case name = "name"
        case type = "type"
        case location = "location"
        case tags = "tags"
        case managedBy = "managedBy"
        case sku = "sku"
        case zones = "zones"
        case properties = "properties"
        }

  public init(location: String) {
    self.location = location
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
    self.location = try container.decode(String.self, forKey: .location)
    if container.contains(.tags) {
        self.tags = try container.decode([String:String]?.self, forKey: .tags)
    }
    if container.contains(.managedBy) {
        self.managedBy = try container.decode(String?.self, forKey: .managedBy)
    }
    if container.contains(.sku) {
        self.sku = try container.decode(DiskSkuData?.self, forKey: .sku)
    }
    if container.contains(.zones) {
        self.zones = try container.decode([String]?.self, forKey: .zones)
    }
    if container.contains(.properties) {
        self.properties = try container.decode(DiskPropertiesData?.self, forKey: .properties)
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
    try container.encode(self.location, forKey: .location)
    if self.tags != nil { try container.encode(self.tags, forKey: .tags) }
    if self.managedBy != nil { try container.encode(self.managedBy, forKey: .managedBy) }
    if self.sku != nil { try container.encode(self.sku as! DiskSkuData?, forKey: .sku) }
    if self.zones != nil { try container.encode(self.zones as! [String]?, forKey: .zones) }
    if self.properties != nil { try container.encode(self.properties as! DiskPropertiesData?, forKey: .properties) }
  }
}

extension DataFactory {
  public static func createDiskProtocol(location: String) -> DiskProtocol {
    return DiskData(location: location)
  }
}
