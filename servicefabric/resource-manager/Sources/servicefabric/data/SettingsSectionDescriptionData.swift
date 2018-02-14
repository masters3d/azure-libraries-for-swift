// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SettingsSectionDescriptionData : SettingsSectionDescriptionProtocol {
    public var name: String
    public var parameters: [SettingsParameterDescriptionProtocol]

        enum CodingKeys: String, CodingKey {case name = "name"
        case parameters = "parameters"
        }

  public init(name: String, parameters: [SettingsParameterDescriptionProtocol])  {
    self.name = name
    self.parameters = parameters
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    self.parameters = try container.decode([SettingsParameterDescriptionData].self, forKey: .parameters)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.name, forKey: .name)
    try container.encode(self.parameters as! [SettingsParameterDescriptionData], forKey: .parameters)
  }
}

extension DataFactory {
  public static func createSettingsSectionDescriptionProtocol(name: String, parameters: [SettingsParameterDescriptionProtocol]) -> SettingsSectionDescriptionProtocol {
    return SettingsSectionDescriptionData(name: name, parameters: parameters)
  }
}