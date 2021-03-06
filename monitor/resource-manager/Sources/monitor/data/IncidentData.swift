// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IncidentData : IncidentProtocol {
    public var name: String?
    public var ruleName: String?
    public var isActive: Bool?
    public var activatedTime: Date?
    public var resolvedTime: Date?

        enum CodingKeys: String, CodingKey {case name = "name"
        case ruleName = "ruleName"
        case isActive = "isActive"
        case activatedTime = "activatedTime"
        case resolvedTime = "resolvedTime"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.ruleName) {
        self.ruleName = try container.decode(String?.self, forKey: .ruleName)
    }
    if container.contains(.isActive) {
        self.isActive = try container.decode(Bool?.self, forKey: .isActive)
    }
    if container.contains(.activatedTime) {
        self.activatedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .activatedTime)), format: .dateTime)
    }
    if container.contains(.resolvedTime) {
        self.resolvedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .resolvedTime)), format: .dateTime)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.ruleName != nil {try container.encode(self.ruleName, forKey: .ruleName)}
    if self.isActive != nil {try container.encode(self.isActive, forKey: .isActive)}
    if self.activatedTime != nil {
        try container.encode(DateConverter.toString(date: self.activatedTime!, format: .dateTime), forKey: .activatedTime)
    }
    if self.resolvedTime != nil {
        try container.encode(DateConverter.toString(date: self.resolvedTime!, format: .dateTime), forKey: .resolvedTime)
    }
  }
}

extension DataFactory {
  public static func createIncidentProtocol() -> IncidentProtocol {
    return IncidentData()
  }
}
