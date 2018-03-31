// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RunCommandDocumentBaseData : RunCommandDocumentBaseProtocol {
    public var schema: String
    public var id: String
    public var osType: OperatingSystemTypesEnum
    public var label: String
    public var description: String

        enum CodingKeys: String, CodingKey {case schema = "$schema"
        case id = "id"
        case osType = "osType"
        case label = "label"
        case description = "description"
        }

  public init(schema: String, id: String, osType: OperatingSystemTypesEnum, label: String, description: String)  {
    self.schema = schema
    self.id = id
    self.osType = osType
    self.label = label
    self.description = description
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.schema = try container.decode(String.self, forKey: .schema)
    self.id = try container.decode(String.self, forKey: .id)
    self.osType = try container.decode(OperatingSystemTypesEnum.self, forKey: .osType)
    self.label = try container.decode(String.self, forKey: .label)
    self.description = try container.decode(String.self, forKey: .description)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.schema, forKey: .schema)
    try container.encode(self.id, forKey: .id)
    try container.encode(self.osType, forKey: .osType)
    try container.encode(self.label, forKey: .label)
    try container.encode(self.description, forKey: .description)
  }
}

extension DataFactory {
  public static func createRunCommandDocumentBaseProtocol(schema: String, id: String, osType: OperatingSystemTypesEnum, label: String, description: String) -> RunCommandDocumentBaseProtocol {
    return RunCommandDocumentBaseData(schema: schema, id: id, osType: osType, label: label, description: description)
  }
}
