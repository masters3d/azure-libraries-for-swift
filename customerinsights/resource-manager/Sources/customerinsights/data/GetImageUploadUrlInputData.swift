// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GetImageUploadUrlInputData : GetImageUploadUrlInputProtocol {
    public var entityType: String?
    public var entityTypeName: String?
    public var relativePath: String?

        enum CodingKeys: String, CodingKey {case entityType = "entityType"
        case entityTypeName = "entityTypeName"
        case relativePath = "relativePath"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.entityType) {
        self.entityType = try container.decode(String?.self, forKey: .entityType)
    }
    if container.contains(.entityTypeName) {
        self.entityTypeName = try container.decode(String?.self, forKey: .entityTypeName)
    }
    if container.contains(.relativePath) {
        self.relativePath = try container.decode(String?.self, forKey: .relativePath)
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
    if self.entityType != nil {try container.encode(self.entityType, forKey: .entityType)}
    if self.entityTypeName != nil {try container.encode(self.entityTypeName, forKey: .entityTypeName)}
    if self.relativePath != nil {try container.encode(self.relativePath, forKey: .relativePath)}
  }
}

extension DataFactory {
  public static func createGetImageUploadUrlInputProtocol() -> GetImageUploadUrlInputProtocol {
    return GetImageUploadUrlInputData()
  }
}
