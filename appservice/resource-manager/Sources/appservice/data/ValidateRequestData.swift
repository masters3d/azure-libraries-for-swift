// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ValidateRequestData : ValidateRequestProtocol {
    public var name: String
    public var type: ValidateResourceTypesEnum
    public var location: String
    public var properties: ValidatePropertiesProtocol

        enum CodingKeys: String, CodingKey {case name = "name"
        case type = "type"
        case location = "location"
        case properties = "properties"
        }

  public init(name: String, type: ValidateResourceTypesEnum, location: String, properties: ValidatePropertiesProtocol) {
    self.name = name
    self.type = type
    self.location = location
    self.properties = properties
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    self.type = try container.decode(ValidateResourceTypesEnum.self, forKey: .type)
    self.location = try container.decode(String.self, forKey: .location)
    self.properties = try container.decode(ValidatePropertiesData.self, forKey: .properties)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.name, forKey: .name)
    try container.encode(self.type, forKey: .type)
    try container.encode(self.location, forKey: .location)
    try container.encode(self.properties as! ValidatePropertiesData, forKey: .properties)
  }
}

extension DataFactory {
  public static func createValidateRequestProtocol(name: String, type: ValidateResourceTypesEnum, location: String, properties: ValidatePropertiesProtocol) -> ValidateRequestProtocol {
    return ValidateRequestData(name: name, type: type, location: location, properties: properties)
  }
}
