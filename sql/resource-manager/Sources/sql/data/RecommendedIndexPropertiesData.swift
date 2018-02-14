// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RecommendedIndexPropertiesData : RecommendedIndexPropertiesProtocol {
    public var action: RecommendedIndexActionEnum?
    public var state: RecommendedIndexStateEnum?
    public var created: Date?
    public var lastModified: Date?
    public var indexType: RecommendedIndexTypeEnum?
    public var schema: String?
    public var table: String?
    public var columns: [String]?
    public var includedColumns: [String]?
    public var indexScript: String?
    public var estimatedImpact: [OperationImpactProtocol?]?
    public var reportedImpact: [OperationImpactProtocol?]?

        enum CodingKeys: String, CodingKey {case action = "action"
        case state = "state"
        case created = "created"
        case lastModified = "lastModified"
        case indexType = "indexType"
        case schema = "schema"
        case table = "table"
        case columns = "columns"
        case includedColumns = "includedColumns"
        case indexScript = "indexScript"
        case estimatedImpact = "estimatedImpact"
        case reportedImpact = "reportedImpact"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.action) {
        self.action = try container.decode(RecommendedIndexActionEnum?.self, forKey: .action)
    }
    if container.contains(.state) {
        self.state = try container.decode(RecommendedIndexStateEnum?.self, forKey: .state)
    }
    if container.contains(.created) {
        self.created = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .created)), format: .dateTime)
    }
    if container.contains(.lastModified) {
        self.lastModified = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastModified)), format: .dateTime)
    }
    if container.contains(.indexType) {
        self.indexType = try container.decode(RecommendedIndexTypeEnum?.self, forKey: .indexType)
    }
    if container.contains(.schema) {
        self.schema = try container.decode(String?.self, forKey: .schema)
    }
    if container.contains(.table) {
        self.table = try container.decode(String?.self, forKey: .table)
    }
    if container.contains(.columns) {
        self.columns = try container.decode([String]?.self, forKey: .columns)
    }
    if container.contains(.includedColumns) {
        self.includedColumns = try container.decode([String]?.self, forKey: .includedColumns)
    }
    if container.contains(.indexScript) {
        self.indexScript = try container.decode(String?.self, forKey: .indexScript)
    }
    if container.contains(.estimatedImpact) {
        self.estimatedImpact = try container.decode([OperationImpactData?]?.self, forKey: .estimatedImpact)
    }
    if container.contains(.reportedImpact) {
        self.reportedImpact = try container.decode([OperationImpactData?]?.self, forKey: .reportedImpact)
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
    if self.action != nil {try container.encode(self.action, forKey: .action)}
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.created != nil {
        try container.encode(DateConverter.toString(date: self.created!, format: .dateTime), forKey: .created)
    }
    if self.lastModified != nil {
        try container.encode(DateConverter.toString(date: self.lastModified!, format: .dateTime), forKey: .lastModified)
    }
    if self.indexType != nil {try container.encode(self.indexType, forKey: .indexType)}
    if self.schema != nil {try container.encode(self.schema, forKey: .schema)}
    if self.table != nil {try container.encode(self.table, forKey: .table)}
    if self.columns != nil {try container.encode(self.columns as! [String]?, forKey: .columns)}
    if self.includedColumns != nil {try container.encode(self.includedColumns as! [String]?, forKey: .includedColumns)}
    if self.indexScript != nil {try container.encode(self.indexScript, forKey: .indexScript)}
    if self.estimatedImpact != nil {try container.encode(self.estimatedImpact as! [OperationImpactData?]?, forKey: .estimatedImpact)}
    if self.reportedImpact != nil {try container.encode(self.reportedImpact as! [OperationImpactData?]?, forKey: .reportedImpact)}
  }
}

extension DataFactory {
  public static func createRecommendedIndexPropertiesProtocol() -> RecommendedIndexPropertiesProtocol {
    return RecommendedIndexPropertiesData()
  }
}
