// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IntegrationAccountMapPropertiesData : IntegrationAccountMapPropertiesProtocol {
    public var mapType: MapTypeEnum
    public var parametersSchema: IntegrationAccountMapPropertiesParametersSchemaProtocol?
    public var createdTime: Date?
    public var changedTime: Date?
    public var content: String?
    public var contentType: String?
    public var contentLink: ContentLinkProtocol?
    public var metadata: [String: String?]?

        enum CodingKeys: String, CodingKey {case mapType = "mapType"
        case parametersSchema = "parametersSchema"
        case createdTime = "createdTime"
        case changedTime = "changedTime"
        case content = "content"
        case contentType = "contentType"
        case contentLink = "contentLink"
        case metadata = "metadata"
        }

  public init(mapType: MapTypeEnum) {
    self.mapType = mapType
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.mapType = try container.decode(MapTypeEnum.self, forKey: .mapType)
    if container.contains(.parametersSchema) {
        self.parametersSchema = try container.decode(IntegrationAccountMapPropertiesParametersSchemaData?.self, forKey: .parametersSchema)
    }
    if container.contains(.createdTime) {
        self.createdTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdTime)), format: .dateTime)
    }
    if container.contains(.changedTime) {
        self.changedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .changedTime)), format: .dateTime)
    }
    if container.contains(.content) {
        self.content = try container.decode(String?.self, forKey: .content)
    }
    if container.contains(.contentType) {
        self.contentType = try container.decode(String?.self, forKey: .contentType)
    }
    if container.contains(.contentLink) {
        self.contentLink = try container.decode(ContentLinkData?.self, forKey: .contentLink)
    }
    if container.contains(.metadata) {
        self.metadata = try container.decode([String: String?]?.self, forKey: .metadata)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.mapType, forKey: .mapType)
    if self.parametersSchema != nil { try container.encode(self.parametersSchema as! IntegrationAccountMapPropertiesParametersSchemaData?, forKey: .parametersSchema) }
    if self.createdTime != nil {
        try container.encode(DateConverter.toString(date: self.createdTime!, format: .dateTime), forKey: .createdTime)
    }
    if self.changedTime != nil {
        try container.encode(DateConverter.toString(date: self.changedTime!, format: .dateTime), forKey: .changedTime)
    }
    if self.content != nil { try container.encode(self.content, forKey: .content) }
    if self.contentType != nil { try container.encode(self.contentType, forKey: .contentType) }
    if self.contentLink != nil { try container.encode(self.contentLink as! ContentLinkData?, forKey: .contentLink) }
    if self.metadata != nil { try container.encode(self.metadata, forKey: .metadata) }
  }
}

extension DataFactory {
  public static func createIntegrationAccountMapPropertiesProtocol(mapType: MapTypeEnum) -> IntegrationAccountMapPropertiesProtocol {
    return IntegrationAccountMapPropertiesData(mapType: mapType)
  }
}
