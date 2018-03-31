// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ResourceAccessData : ResourceAccessProtocol {
    public var additionalProperties: [String:[String: String?]]?
    public var id: String
    public var type: String?

        enum CodingKeys: String, CodingKey {case additionalProperties = ""
        case id = "id"
        case type = "type"
        }

  public init(id: String)  {
    self.id = id
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.additionalProperties) {
        self.additionalProperties = try container.decode([String:[String: String?]]?.self, forKey: .additionalProperties)
    }
    self.id = try container.decode(String.self, forKey: .id)
    if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
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
    if self.additionalProperties != nil {try container.encode(self.additionalProperties, forKey: .additionalProperties)}
    try container.encode(self.id, forKey: .id)
    if self.type != nil {try container.encode(self.type, forKey: .type)}
  }
}

extension DataFactory {
  public static func createResourceAccessProtocol(id: String) -> ResourceAccessProtocol {
    return ResourceAccessData(id: id)
  }
}
