// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NodeParametersPropertiesData : NodeParametersPropertiesProtocol {
    public var gatewayId: String?
    public var connectionName: String?
    public var userName: String?
    public var password: String?

        enum CodingKeys: String, CodingKey {case gatewayId = "gatewayId"
        case connectionName = "connectionName"
        case userName = "userName"
        case password = "password"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.gatewayId) {
        self.gatewayId = try container.decode(String?.self, forKey: .gatewayId)
    }
    if container.contains(.connectionName) {
        self.connectionName = try container.decode(String?.self, forKey: .connectionName)
    }
    if container.contains(.userName) {
        self.userName = try container.decode(String?.self, forKey: .userName)
    }
    if container.contains(.password) {
        self.password = try container.decode(String?.self, forKey: .password)
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
    if self.gatewayId != nil {try container.encode(self.gatewayId, forKey: .gatewayId)}
    if self.connectionName != nil {try container.encode(self.connectionName, forKey: .connectionName)}
    if self.userName != nil {try container.encode(self.userName, forKey: .userName)}
    if self.password != nil {try container.encode(self.password, forKey: .password)}
  }
}

extension DataFactory {
  public static func createNodeParametersPropertiesProtocol() -> NodeParametersPropertiesProtocol {
    return NodeParametersPropertiesData()
  }
}
