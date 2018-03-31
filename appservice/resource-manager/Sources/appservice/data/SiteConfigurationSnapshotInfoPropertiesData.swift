// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SiteConfigurationSnapshotInfoPropertiesData : SiteConfigurationSnapshotInfoPropertiesProtocol {
    public var time: Date?
    public var id: Int32?

        enum CodingKeys: String, CodingKey {case time = "time"
        case id = "id"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.time) {
        self.time = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .time)), format: .dateTime)
    }
    if container.contains(.id) {
        self.id = try container.decode(Int32?.self, forKey: .id)
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
    if self.time != nil {
        try container.encode(DateConverter.toString(date: self.time!, format: .dateTime), forKey: .time)
    }
    if self.id != nil {try container.encode(self.id, forKey: .id)}
  }
}

extension DataFactory {
  public static func createSiteConfigurationSnapshotInfoPropertiesProtocol() -> SiteConfigurationSnapshotInfoPropertiesProtocol {
    return SiteConfigurationSnapshotInfoPropertiesData()
  }
}
