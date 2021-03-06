// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CreateDataLakeStoreAccountParametersData : CreateDataLakeStoreAccountParametersProtocol {
    public var location: String
    public var tags: [String:String]?
    public var identity: EncryptionIdentityProtocol?
    public var properties: CreateDataLakeStoreAccountPropertiesProtocol?

        enum CodingKeys: String, CodingKey {case location = "location"
        case tags = "tags"
        case identity = "identity"
        case properties = "properties"
        }

  public init(location: String)  {
    self.location = location
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.location = try container.decode(String.self, forKey: .location)
    if container.contains(.tags) {
        self.tags = try container.decode([String:String]?.self, forKey: .tags)
    }
    if container.contains(.identity) {
        self.identity = try container.decode(EncryptionIdentityData?.self, forKey: .identity)
    }
    if container.contains(.properties) {
        self.properties = try container.decode(CreateDataLakeStoreAccountPropertiesData?.self, forKey: .properties)
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
    try container.encode(self.location, forKey: .location)
    if self.tags != nil {try container.encode(self.tags, forKey: .tags)}
    if self.identity != nil {try container.encode(self.identity as! EncryptionIdentityData?, forKey: .identity)}
    if self.properties != nil {try container.encode(self.properties as! CreateDataLakeStoreAccountPropertiesData?, forKey: .properties)}
  }
}

extension DataFactory {
  public static func createCreateDataLakeStoreAccountParametersProtocol(location: String) -> CreateDataLakeStoreAccountParametersProtocol {
    return CreateDataLakeStoreAccountParametersData(location: location)
  }
}
