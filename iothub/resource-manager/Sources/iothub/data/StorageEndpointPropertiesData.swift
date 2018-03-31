// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct StorageEndpointPropertiesData : StorageEndpointPropertiesProtocol {
    public var sasTtlAsIso8601: String?
    public var connectionString: String
    public var containerName: String

        enum CodingKeys: String, CodingKey {case sasTtlAsIso8601 = "sasTtlAsIso8601"
        case connectionString = "connectionString"
        case containerName = "containerName"
        }

  public init(connectionString: String, containerName: String)  {
    self.connectionString = connectionString
    self.containerName = containerName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sasTtlAsIso8601) {
        self.sasTtlAsIso8601 = try container.decode(String?.self, forKey: .sasTtlAsIso8601)
    }
    self.connectionString = try container.decode(String.self, forKey: .connectionString)
    self.containerName = try container.decode(String.self, forKey: .containerName)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.sasTtlAsIso8601 != nil {try container.encode(self.sasTtlAsIso8601, forKey: .sasTtlAsIso8601)}
    try container.encode(self.connectionString, forKey: .connectionString)
    try container.encode(self.containerName, forKey: .containerName)
  }
}

extension DataFactory {
  public static func createStorageEndpointPropertiesProtocol(connectionString: String, containerName: String) -> StorageEndpointPropertiesProtocol {
    return StorageEndpointPropertiesData(connectionString: connectionString, containerName: containerName)
  }
}
