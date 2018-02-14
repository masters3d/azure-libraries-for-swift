// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ConnectionTypeCreateOrUpdatePropertiesData : ConnectionTypeCreateOrUpdatePropertiesProtocol {
    public var isGlobal: Bool?
    public var fieldDefinitions: [String:FieldDefinitionProtocol]

        enum CodingKeys: String, CodingKey {case isGlobal = "isGlobal"
        case fieldDefinitions = "fieldDefinitions"
        }

  public init(fieldDefinitions: [String:FieldDefinitionProtocol])  {
    self.fieldDefinitions = fieldDefinitions
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.isGlobal) {
        self.isGlobal = try container.decode(Bool?.self, forKey: .isGlobal)
    }
    self.fieldDefinitions = try container.decode([String:FieldDefinitionData].self, forKey: .fieldDefinitions)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.isGlobal != nil {try container.encode(self.isGlobal, forKey: .isGlobal)}
    try container.encode(self.fieldDefinitions, forKey: .fieldDefinitions)
  }
}

extension DataFactory {
  public static func createConnectionTypeCreateOrUpdatePropertiesProtocol(fieldDefinitions: [String:FieldDefinitionProtocol]) -> ConnectionTypeCreateOrUpdatePropertiesProtocol {
    return ConnectionTypeCreateOrUpdatePropertiesData(fieldDefinitions: fieldDefinitions)
  }
}