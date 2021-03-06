// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GeoFilterData : GeoFilterProtocol {
    public var relativePath: String
    public var action: GeoFilterActionsEnum
    public var countryCodes: [String]

        enum CodingKeys: String, CodingKey {case relativePath = "relativePath"
        case action = "action"
        case countryCodes = "countryCodes"
        }

  public init(relativePath: String, action: GeoFilterActionsEnum, countryCodes: [String])  {
    self.relativePath = relativePath
    self.action = action
    self.countryCodes = countryCodes
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.relativePath = try container.decode(String.self, forKey: .relativePath)
    self.action = try container.decode(GeoFilterActionsEnum.self, forKey: .action)
    self.countryCodes = try container.decode([String].self, forKey: .countryCodes)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.relativePath, forKey: .relativePath)
    try container.encode(self.action, forKey: .action)
    try container.encode(self.countryCodes as! [String], forKey: .countryCodes)
  }
}

extension DataFactory {
  public static func createGeoFilterProtocol(relativePath: String, action: GeoFilterActionsEnum, countryCodes: [String]) -> GeoFilterProtocol {
    return GeoFilterData(relativePath: relativePath, action: action, countryCodes: countryCodes)
  }
}
