// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PropertyDefinitionData : PropertyDefinitionProtocol {
    public var arrayValueSeparator: String?
    public var enumValidValues: [ProfileEnumValidValuesFormatProtocol?]?
    public var fieldName: String
    public var fieldType: String
    public var isArray: Bool?
    public var isEnum: Bool?
    public var isFlagEnum: Bool?
    public var isImage: Bool?
    public var isLocalizedString: Bool?
    public var isName: Bool?
    public var isRequired: Bool?
    public var propertyId: String?
    public var schemaItemPropLink: String?
    public var maxLength: Int32?
    public var isAvailableInGraph: Bool?
    public var dataSourcePrecedenceRules: [DataSourcePrecedenceProtocol?]?

        enum CodingKeys: String, CodingKey {case arrayValueSeparator = "arrayValueSeparator"
        case enumValidValues = "enumValidValues"
        case fieldName = "fieldName"
        case fieldType = "fieldType"
        case isArray = "isArray"
        case isEnum = "isEnum"
        case isFlagEnum = "isFlagEnum"
        case isImage = "isImage"
        case isLocalizedString = "isLocalizedString"
        case isName = "isName"
        case isRequired = "isRequired"
        case propertyId = "propertyId"
        case schemaItemPropLink = "schemaItemPropLink"
        case maxLength = "maxLength"
        case isAvailableInGraph = "isAvailableInGraph"
        case dataSourcePrecedenceRules = "dataSourcePrecedenceRules"
        }

  public init(fieldName: String, fieldType: String)  {
    self.fieldName = fieldName
    self.fieldType = fieldType
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.arrayValueSeparator) {
        self.arrayValueSeparator = try container.decode(String?.self, forKey: .arrayValueSeparator)
    }
    if container.contains(.enumValidValues) {
        self.enumValidValues = try container.decode([ProfileEnumValidValuesFormatData?]?.self, forKey: .enumValidValues)
    }
    self.fieldName = try container.decode(String.self, forKey: .fieldName)
    self.fieldType = try container.decode(String.self, forKey: .fieldType)
    if container.contains(.isArray) {
        self.isArray = try container.decode(Bool?.self, forKey: .isArray)
    }
    if container.contains(.isEnum) {
        self.isEnum = try container.decode(Bool?.self, forKey: .isEnum)
    }
    if container.contains(.isFlagEnum) {
        self.isFlagEnum = try container.decode(Bool?.self, forKey: .isFlagEnum)
    }
    if container.contains(.isImage) {
        self.isImage = try container.decode(Bool?.self, forKey: .isImage)
    }
    if container.contains(.isLocalizedString) {
        self.isLocalizedString = try container.decode(Bool?.self, forKey: .isLocalizedString)
    }
    if container.contains(.isName) {
        self.isName = try container.decode(Bool?.self, forKey: .isName)
    }
    if container.contains(.isRequired) {
        self.isRequired = try container.decode(Bool?.self, forKey: .isRequired)
    }
    if container.contains(.propertyId) {
        self.propertyId = try container.decode(String?.self, forKey: .propertyId)
    }
    if container.contains(.schemaItemPropLink) {
        self.schemaItemPropLink = try container.decode(String?.self, forKey: .schemaItemPropLink)
    }
    if container.contains(.maxLength) {
        self.maxLength = try container.decode(Int32?.self, forKey: .maxLength)
    }
    if container.contains(.isAvailableInGraph) {
        self.isAvailableInGraph = try container.decode(Bool?.self, forKey: .isAvailableInGraph)
    }
    if container.contains(.dataSourcePrecedenceRules) {
        self.dataSourcePrecedenceRules = try container.decode([DataSourcePrecedenceData?]?.self, forKey: .dataSourcePrecedenceRules)
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
    if self.arrayValueSeparator != nil {try container.encode(self.arrayValueSeparator, forKey: .arrayValueSeparator)}
    if self.enumValidValues != nil {try container.encode(self.enumValidValues as! [ProfileEnumValidValuesFormatData?]?, forKey: .enumValidValues)}
    try container.encode(self.fieldName, forKey: .fieldName)
    try container.encode(self.fieldType, forKey: .fieldType)
    if self.isArray != nil {try container.encode(self.isArray, forKey: .isArray)}
    if self.isEnum != nil {try container.encode(self.isEnum, forKey: .isEnum)}
    if self.isFlagEnum != nil {try container.encode(self.isFlagEnum, forKey: .isFlagEnum)}
    if self.isImage != nil {try container.encode(self.isImage, forKey: .isImage)}
    if self.isLocalizedString != nil {try container.encode(self.isLocalizedString, forKey: .isLocalizedString)}
    if self.isName != nil {try container.encode(self.isName, forKey: .isName)}
    if self.isRequired != nil {try container.encode(self.isRequired, forKey: .isRequired)}
    if self.propertyId != nil {try container.encode(self.propertyId, forKey: .propertyId)}
    if self.schemaItemPropLink != nil {try container.encode(self.schemaItemPropLink, forKey: .schemaItemPropLink)}
    if self.maxLength != nil {try container.encode(self.maxLength, forKey: .maxLength)}
    if self.isAvailableInGraph != nil {try container.encode(self.isAvailableInGraph, forKey: .isAvailableInGraph)}
    if self.dataSourcePrecedenceRules != nil {try container.encode(self.dataSourcePrecedenceRules as! [DataSourcePrecedenceData?]?, forKey: .dataSourcePrecedenceRules)}
  }
}

extension DataFactory {
  public static func createPropertyDefinitionProtocol(fieldName: String, fieldType: String) -> PropertyDefinitionProtocol {
    return PropertyDefinitionData(fieldName: fieldName, fieldType: fieldType)
  }
}
