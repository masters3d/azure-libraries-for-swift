// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AutoStoragePropertiesData : AutoStoragePropertiesProtocol, AutoStorageBasePropertiesProtocol {
    public var storageAccountId: String
    public var lastKeySync: Date

        enum CodingKeys: String, CodingKey {case storageAccountId = "storageAccountId"
        case lastKeySync = "lastKeySync"
        }

  public init(storageAccountId: String, lastKeySync: Date)  {
    self.storageAccountId = storageAccountId
    self.lastKeySync = lastKeySync
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.storageAccountId = try container.decode(String.self, forKey: .storageAccountId)
        self.lastKeySync = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastKeySync)), format: .dateTime)!
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.storageAccountId, forKey: .storageAccountId)
    try container.encode(DateConverter.toString(date: self.lastKeySync, format: .dateTime), forKey: .lastKeySync)
  }
}

extension DataFactory {
  public static func createAutoStoragePropertiesProtocol(storageAccountId: String, lastKeySync: Date) -> AutoStoragePropertiesProtocol {
    return AutoStoragePropertiesData(storageAccountId: storageAccountId, lastKeySync: lastKeySync)
  }
}
