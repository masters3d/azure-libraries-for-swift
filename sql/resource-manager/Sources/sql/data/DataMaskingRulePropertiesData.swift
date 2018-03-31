// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DataMaskingRulePropertiesData : DataMaskingRulePropertiesProtocol {
    public var id: String?
    public var aliasName: String?
    public var ruleState: DataMaskingRuleStateEnum?
    public var schemaName: String
    public var tableName: String
    public var columnName: String
    public var maskingFunction: DataMaskingFunctionEnum
    public var numberFrom: String?
    public var numberTo: String?
    public var prefixSize: String?
    public var suffixSize: String?
    public var replacementString: String?

        enum CodingKeys: String, CodingKey {case id = "id"
        case aliasName = "aliasName"
        case ruleState = "ruleState"
        case schemaName = "schemaName"
        case tableName = "tableName"
        case columnName = "columnName"
        case maskingFunction = "maskingFunction"
        case numberFrom = "numberFrom"
        case numberTo = "numberTo"
        case prefixSize = "prefixSize"
        case suffixSize = "suffixSize"
        case replacementString = "replacementString"
        }

  public init(schemaName: String, tableName: String, columnName: String, maskingFunction: DataMaskingFunctionEnum)  {
    self.schemaName = schemaName
    self.tableName = tableName
    self.columnName = columnName
    self.maskingFunction = maskingFunction
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.aliasName) {
        self.aliasName = try container.decode(String?.self, forKey: .aliasName)
    }
    if container.contains(.ruleState) {
        self.ruleState = try container.decode(DataMaskingRuleStateEnum?.self, forKey: .ruleState)
    }
    self.schemaName = try container.decode(String.self, forKey: .schemaName)
    self.tableName = try container.decode(String.self, forKey: .tableName)
    self.columnName = try container.decode(String.self, forKey: .columnName)
    self.maskingFunction = try container.decode(DataMaskingFunctionEnum.self, forKey: .maskingFunction)
    if container.contains(.numberFrom) {
        self.numberFrom = try container.decode(String?.self, forKey: .numberFrom)
    }
    if container.contains(.numberTo) {
        self.numberTo = try container.decode(String?.self, forKey: .numberTo)
    }
    if container.contains(.prefixSize) {
        self.prefixSize = try container.decode(String?.self, forKey: .prefixSize)
    }
    if container.contains(.suffixSize) {
        self.suffixSize = try container.decode(String?.self, forKey: .suffixSize)
    }
    if container.contains(.replacementString) {
        self.replacementString = try container.decode(String?.self, forKey: .replacementString)
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
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.aliasName != nil {try container.encode(self.aliasName, forKey: .aliasName)}
    if self.ruleState != nil {try container.encode(self.ruleState, forKey: .ruleState)}
    try container.encode(self.schemaName, forKey: .schemaName)
    try container.encode(self.tableName, forKey: .tableName)
    try container.encode(self.columnName, forKey: .columnName)
    try container.encode(self.maskingFunction, forKey: .maskingFunction)
    if self.numberFrom != nil {try container.encode(self.numberFrom, forKey: .numberFrom)}
    if self.numberTo != nil {try container.encode(self.numberTo, forKey: .numberTo)}
    if self.prefixSize != nil {try container.encode(self.prefixSize, forKey: .prefixSize)}
    if self.suffixSize != nil {try container.encode(self.suffixSize, forKey: .suffixSize)}
    if self.replacementString != nil {try container.encode(self.replacementString, forKey: .replacementString)}
  }
}

extension DataFactory {
  public static func createDataMaskingRulePropertiesProtocol(schemaName: String, tableName: String, columnName: String, maskingFunction: DataMaskingFunctionEnum) -> DataMaskingRulePropertiesProtocol {
    return DataMaskingRulePropertiesData(schemaName: schemaName, tableName: tableName, columnName: columnName, maskingFunction: maskingFunction)
  }
}
