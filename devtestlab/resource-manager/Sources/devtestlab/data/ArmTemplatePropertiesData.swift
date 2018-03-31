// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ArmTemplatePropertiesData : ArmTemplatePropertiesProtocol {
    public var displayName: String?
    public var description: String?
    public var publisher: String?
    public var icon: String?
    public var contents: [String: String?]?
    public var createdDate: Date?
    public var parametersValueFilesInfo: [ParametersValueFileInfoProtocol?]?

        enum CodingKeys: String, CodingKey {case displayName = "displayName"
        case description = "description"
        case publisher = "publisher"
        case icon = "icon"
        case contents = "contents"
        case createdDate = "createdDate"
        case parametersValueFilesInfo = "parametersValueFilesInfo"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.displayName) {
        self.displayName = try container.decode(String?.self, forKey: .displayName)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.publisher) {
        self.publisher = try container.decode(String?.self, forKey: .publisher)
    }
    if container.contains(.icon) {
        self.icon = try container.decode(String?.self, forKey: .icon)
    }
    if container.contains(.contents) {
        self.contents = try container.decode([String: String?]?.self, forKey: .contents)
    }
    if container.contains(.createdDate) {
        self.createdDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdDate)), format: .dateTime)
    }
    if container.contains(.parametersValueFilesInfo) {
        self.parametersValueFilesInfo = try container.decode([ParametersValueFileInfoData?]?.self, forKey: .parametersValueFilesInfo)
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
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.publisher != nil {try container.encode(self.publisher, forKey: .publisher)}
    if self.icon != nil {try container.encode(self.icon, forKey: .icon)}
    if self.contents != nil {try container.encode(self.contents, forKey: .contents)}
    if self.createdDate != nil {
        try container.encode(DateConverter.toString(date: self.createdDate!, format: .dateTime), forKey: .createdDate)
    }
    if self.parametersValueFilesInfo != nil {try container.encode(self.parametersValueFilesInfo as! [ParametersValueFileInfoData?]?, forKey: .parametersValueFilesInfo)}
  }
}

extension DataFactory {
  public static func createArmTemplatePropertiesProtocol() -> ArmTemplatePropertiesProtocol {
    return ArmTemplatePropertiesData()
  }
}
