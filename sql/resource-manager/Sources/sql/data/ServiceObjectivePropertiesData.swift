// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ServiceObjectivePropertiesData : ServiceObjectivePropertiesProtocol {
    public var serviceObjectiveName: String?
    public var isDefault: Bool?
    public var isSystem: Bool?
    public var description: String?
    public var enabled: Bool?

        enum CodingKeys: String, CodingKey {case serviceObjectiveName = "serviceObjectiveName"
        case isDefault = "isDefault"
        case isSystem = "isSystem"
        case description = "description"
        case enabled = "enabled"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.serviceObjectiveName) {
        self.serviceObjectiveName = try container.decode(String?.self, forKey: .serviceObjectiveName)
    }
    if container.contains(.isDefault) {
        self.isDefault = try container.decode(Bool?.self, forKey: .isDefault)
    }
    if container.contains(.isSystem) {
        self.isSystem = try container.decode(Bool?.self, forKey: .isSystem)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.enabled) {
        self.enabled = try container.decode(Bool?.self, forKey: .enabled)
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
    if self.serviceObjectiveName != nil {try container.encode(self.serviceObjectiveName, forKey: .serviceObjectiveName)}
    if self.isDefault != nil {try container.encode(self.isDefault, forKey: .isDefault)}
    if self.isSystem != nil {try container.encode(self.isSystem, forKey: .isSystem)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.enabled != nil {try container.encode(self.enabled, forKey: .enabled)}
  }
}

extension DataFactory {
  public static func createServiceObjectivePropertiesProtocol() -> ServiceObjectivePropertiesProtocol {
    return ServiceObjectivePropertiesData()
  }
}
