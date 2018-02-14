// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ItsmReceiverData : ItsmReceiverProtocol {
    public var name: String
    public var workspaceId: String
    public var connectionId: String
    public var ticketConfiguration: String
    public var region: String

        enum CodingKeys: String, CodingKey {case name = "name"
        case workspaceId = "workspaceId"
        case connectionId = "connectionId"
        case ticketConfiguration = "ticketConfiguration"
        case region = "region"
        }

  public init(name: String, workspaceId: String, connectionId: String, ticketConfiguration: String, region: String)  {
    self.name = name
    self.workspaceId = workspaceId
    self.connectionId = connectionId
    self.ticketConfiguration = ticketConfiguration
    self.region = region
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    self.workspaceId = try container.decode(String.self, forKey: .workspaceId)
    self.connectionId = try container.decode(String.self, forKey: .connectionId)
    self.ticketConfiguration = try container.decode(String.self, forKey: .ticketConfiguration)
    self.region = try container.decode(String.self, forKey: .region)
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
    try container.encode(self.workspaceId, forKey: .workspaceId)
    try container.encode(self.connectionId, forKey: .connectionId)
    try container.encode(self.ticketConfiguration, forKey: .ticketConfiguration)
    try container.encode(self.region, forKey: .region)
  }
}

extension DataFactory {
  public static func createItsmReceiverProtocol(name: String, workspaceId: String, connectionId: String, ticketConfiguration: String, region: String) -> ItsmReceiverProtocol {
    return ItsmReceiverData(name: name, workspaceId: workspaceId, connectionId: connectionId, ticketConfiguration: ticketConfiguration, region: region)
  }
}
