// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DestinationPropertiesData : DestinationPropertiesProtocol {
    public var storageAccountResourceId: String?
    public var blobContainer: String?
    public var archiveNameFormat: String?

        enum CodingKeys: String, CodingKey {case storageAccountResourceId = "storageAccountResourceId"
        case blobContainer = "blobContainer"
        case archiveNameFormat = "archiveNameFormat"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.storageAccountResourceId) {
        self.storageAccountResourceId = try container.decode(String?.self, forKey: .storageAccountResourceId)
    }
    if container.contains(.blobContainer) {
        self.blobContainer = try container.decode(String?.self, forKey: .blobContainer)
    }
    if container.contains(.archiveNameFormat) {
        self.archiveNameFormat = try container.decode(String?.self, forKey: .archiveNameFormat)
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
    if self.storageAccountResourceId != nil {try container.encode(self.storageAccountResourceId, forKey: .storageAccountResourceId)}
    if self.blobContainer != nil {try container.encode(self.blobContainer, forKey: .blobContainer)}
    if self.archiveNameFormat != nil {try container.encode(self.archiveNameFormat, forKey: .archiveNameFormat)}
  }
}

extension DataFactory {
  public static func createDestinationPropertiesProtocol() -> DestinationPropertiesProtocol {
    return DestinationPropertiesData()
  }
}
