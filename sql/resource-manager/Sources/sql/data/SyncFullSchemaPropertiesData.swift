// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SyncFullSchemaPropertiesData : SyncFullSchemaPropertiesProtocol {
    public var tables: [SyncFullSchemaTableProtocol?]?
    public var lastUpdateTime: Date?

        enum CodingKeys: String, CodingKey {case tables = "tables"
        case lastUpdateTime = "lastUpdateTime"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.tables) {
        self.tables = try container.decode([SyncFullSchemaTableData?]?.self, forKey: .tables)
    }
    if container.contains(.lastUpdateTime) {
        self.lastUpdateTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastUpdateTime)), format: .dateTime)
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
    if self.tables != nil {try container.encode(self.tables as! [SyncFullSchemaTableData?]?, forKey: .tables)}
    if self.lastUpdateTime != nil {
        try container.encode(DateConverter.toString(date: self.lastUpdateTime!, format: .dateTime), forKey: .lastUpdateTime)
    }
  }
}

extension DataFactory {
  public static func createSyncFullSchemaPropertiesProtocol() -> SyncFullSchemaPropertiesProtocol {
    return SyncFullSchemaPropertiesData()
  }
}
