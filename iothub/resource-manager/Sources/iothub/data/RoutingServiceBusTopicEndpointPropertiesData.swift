// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RoutingServiceBusTopicEndpointPropertiesData : RoutingServiceBusTopicEndpointPropertiesProtocol {
    public var connectionString: String
    public var name: String
    public var subscriptionId: String?
    public var resourceGroup: String?

        enum CodingKeys: String, CodingKey {case connectionString = "connectionString"
        case name = "name"
        case subscriptionId = "subscriptionId"
        case resourceGroup = "resourceGroup"
        }

  public init(connectionString: String, name: String)  {
    self.connectionString = connectionString
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.connectionString = try container.decode(String.self, forKey: .connectionString)
    self.name = try container.decode(String.self, forKey: .name)
    if container.contains(.subscriptionId) {
        self.subscriptionId = try container.decode(String?.self, forKey: .subscriptionId)
    }
    if container.contains(.resourceGroup) {
        self.resourceGroup = try container.decode(String?.self, forKey: .resourceGroup)
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
    try container.encode(self.connectionString, forKey: .connectionString)
    try container.encode(self.name, forKey: .name)
    if self.subscriptionId != nil {try container.encode(self.subscriptionId, forKey: .subscriptionId)}
    if self.resourceGroup != nil {try container.encode(self.resourceGroup, forKey: .resourceGroup)}
  }
}

extension DataFactory {
  public static func createRoutingServiceBusTopicEndpointPropertiesProtocol(connectionString: String, name: String) -> RoutingServiceBusTopicEndpointPropertiesProtocol {
    return RoutingServiceBusTopicEndpointPropertiesData(connectionString: connectionString, name: name)
  }
}
