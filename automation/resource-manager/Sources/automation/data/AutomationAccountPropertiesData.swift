// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AutomationAccountPropertiesData : AutomationAccountPropertiesProtocol {
    public var sku: SkuProtocol?
    public var lastModifiedBy: String?
    public var state: AutomationAccountStateEnum?
    public var creationTime: Date?
    public var lastModifiedTime: Date?
    public var description: String?

        enum CodingKeys: String, CodingKey {case sku = "sku"
        case lastModifiedBy = "lastModifiedBy"
        case state = "state"
        case creationTime = "creationTime"
        case lastModifiedTime = "lastModifiedTime"
        case description = "description"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sku) {
        self.sku = try container.decode(SkuData?.self, forKey: .sku)
    }
    if container.contains(.lastModifiedBy) {
        self.lastModifiedBy = try container.decode(String?.self, forKey: .lastModifiedBy)
    }
    if container.contains(.state) {
        self.state = try container.decode(AutomationAccountStateEnum?.self, forKey: .state)
    }
    if container.contains(.creationTime) {
        self.creationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .creationTime)), format: .dateTime)
    }
    if container.contains(.lastModifiedTime) {
        self.lastModifiedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastModifiedTime)), format: .dateTime)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
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
    if self.sku != nil {try container.encode(self.sku as! SkuData?, forKey: .sku)}
    if self.lastModifiedBy != nil {try container.encode(self.lastModifiedBy, forKey: .lastModifiedBy)}
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.creationTime != nil {
        try container.encode(DateConverter.toString(date: self.creationTime!, format: .dateTime), forKey: .creationTime)
    }
    if self.lastModifiedTime != nil {
        try container.encode(DateConverter.toString(date: self.lastModifiedTime!, format: .dateTime), forKey: .lastModifiedTime)
    }
    if self.description != nil {try container.encode(self.description, forKey: .description)}
  }
}

extension DataFactory {
  public static func createAutomationAccountPropertiesProtocol() -> AutomationAccountPropertiesProtocol {
    return AutomationAccountPropertiesData()
  }
}