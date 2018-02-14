// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ConnectionCreateOrUpdatePropertiesData : ConnectionCreateOrUpdatePropertiesProtocol {
    public var description: String?
    public var connectionType: ConnectionTypeAssociationPropertyProtocol
    public var fieldDefinitionValues: [String:String]?

        enum CodingKeys: String, CodingKey {case description = "description"
        case connectionType = "connectionType"
        case fieldDefinitionValues = "fieldDefinitionValues"
        }

  public init(connectionType: ConnectionTypeAssociationPropertyProtocol)  {
    self.connectionType = connectionType
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    self.connectionType = try container.decode(ConnectionTypeAssociationPropertyData.self, forKey: .connectionType)
    if container.contains(.fieldDefinitionValues) {
        self.fieldDefinitionValues = try container.decode([String:String]?.self, forKey: .fieldDefinitionValues)
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
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    try container.encode(self.connectionType as! ConnectionTypeAssociationPropertyData, forKey: .connectionType)
    if self.fieldDefinitionValues != nil {try container.encode(self.fieldDefinitionValues, forKey: .fieldDefinitionValues)}
  }
}

extension DataFactory {
  public static func createConnectionCreateOrUpdatePropertiesProtocol(connectionType: ConnectionTypeAssociationPropertyProtocol) -> ConnectionCreateOrUpdatePropertiesProtocol {
    return ConnectionCreateOrUpdatePropertiesData(connectionType: connectionType)
  }
}