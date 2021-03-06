// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewayBackendHealthHttpSettingsData : ApplicationGatewayBackendHealthHttpSettingsProtocol {
    public var backendHttpSettings: ApplicationGatewayBackendHttpSettingsProtocol?
    public var servers: [ApplicationGatewayBackendHealthServerProtocol?]?

        enum CodingKeys: String, CodingKey {case backendHttpSettings = "backendHttpSettings"
        case servers = "servers"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.backendHttpSettings) {
        self.backendHttpSettings = try container.decode(ApplicationGatewayBackendHttpSettingsData?.self, forKey: .backendHttpSettings)
    }
    if container.contains(.servers) {
        self.servers = try container.decode([ApplicationGatewayBackendHealthServerData?]?.self, forKey: .servers)
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
    if self.backendHttpSettings != nil {try container.encode(self.backendHttpSettings as! ApplicationGatewayBackendHttpSettingsData?, forKey: .backendHttpSettings)}
    if self.servers != nil {try container.encode(self.servers as! [ApplicationGatewayBackendHealthServerData?]?, forKey: .servers)}
  }
}

extension DataFactory {
  public static func createApplicationGatewayBackendHealthHttpSettingsProtocol() -> ApplicationGatewayBackendHealthHttpSettingsProtocol {
    return ApplicationGatewayBackendHealthHttpSettingsData()
  }
}
