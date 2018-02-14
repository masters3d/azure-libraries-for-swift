// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RoutePropertiesData : RoutePropertiesProtocol {
    public var name: String
    public var source: RoutingSourceEnum
    public var condition: String?
    public var endpointNames: [String]
    public var isEnabled: Bool

        enum CodingKeys: String, CodingKey {case name = "name"
        case source = "source"
        case condition = "condition"
        case endpointNames = "endpointNames"
        case isEnabled = "isEnabled"
        }

  public init(name: String, source: RoutingSourceEnum, endpointNames: [String], isEnabled: Bool)  {
    self.name = name
    self.source = source
    self.endpointNames = endpointNames
    self.isEnabled = isEnabled
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    self.source = try container.decode(RoutingSourceEnum.self, forKey: .source)
    if container.contains(.condition) {
        self.condition = try container.decode(String?.self, forKey: .condition)
    }
    self.endpointNames = try container.decode([String].self, forKey: .endpointNames)
    self.isEnabled = try container.decode(Bool.self, forKey: .isEnabled)
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
    try container.encode(self.source, forKey: .source)
    if self.condition != nil {try container.encode(self.condition, forKey: .condition)}
    try container.encode(self.endpointNames as! [String], forKey: .endpointNames)
    try container.encode(self.isEnabled, forKey: .isEnabled)
  }
}

extension DataFactory {
  public static func createRoutePropertiesProtocol(name: String, source: RoutingSourceEnum, endpointNames: [String], isEnabled: Bool) -> RoutePropertiesProtocol {
    return RoutePropertiesData(name: name, source: source, endpointNames: endpointNames, isEnabled: isEnabled)
  }
}
