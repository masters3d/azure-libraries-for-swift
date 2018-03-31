// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RedisCommonPropertiesData : RedisCommonPropertiesProtocol {
    public var redisConfiguration: [String:String]?
    public var enableNonSslPort: Bool?
    public var tenantSettings: [String:String]?
    public var shardCount: Int32?

        enum CodingKeys: String, CodingKey {case redisConfiguration = "redisConfiguration"
        case enableNonSslPort = "enableNonSslPort"
        case tenantSettings = "tenantSettings"
        case shardCount = "shardCount"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.redisConfiguration) {
        self.redisConfiguration = try container.decode([String:String]?.self, forKey: .redisConfiguration)
    }
    if container.contains(.enableNonSslPort) {
        self.enableNonSslPort = try container.decode(Bool?.self, forKey: .enableNonSslPort)
    }
    if container.contains(.tenantSettings) {
        self.tenantSettings = try container.decode([String:String]?.self, forKey: .tenantSettings)
    }
    if container.contains(.shardCount) {
        self.shardCount = try container.decode(Int32?.self, forKey: .shardCount)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.redisConfiguration != nil { try container.encode(self.redisConfiguration, forKey: .redisConfiguration) }
    if self.enableNonSslPort != nil { try container.encode(self.enableNonSslPort, forKey: .enableNonSslPort) }
    if self.tenantSettings != nil { try container.encode(self.tenantSettings, forKey: .tenantSettings) }
    if self.shardCount != nil { try container.encode(self.shardCount, forKey: .shardCount) }
  }
}

extension DataFactory {
  public static func createRedisCommonPropertiesProtocol() -> RedisCommonPropertiesProtocol {
    return RedisCommonPropertiesData()
  }
}
