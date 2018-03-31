// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AutoPoolSpecificationData : AutoPoolSpecificationProtocol {
    public var autoPoolIdPrefix: String?
    public var poolLifetimeOption: PoolLifetimeOptionEnum
    public var keepAlive: Bool?
    public var pool: PoolSpecificationProtocol?

        enum CodingKeys: String, CodingKey {case autoPoolIdPrefix = "autoPoolIdPrefix"
        case poolLifetimeOption = "poolLifetimeOption"
        case keepAlive = "keepAlive"
        case pool = "pool"
        }

  public init(poolLifetimeOption: PoolLifetimeOptionEnum)  {
    self.poolLifetimeOption = poolLifetimeOption
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.autoPoolIdPrefix) {
        self.autoPoolIdPrefix = try container.decode(String?.self, forKey: .autoPoolIdPrefix)
    }
    self.poolLifetimeOption = try container.decode(PoolLifetimeOptionEnum.self, forKey: .poolLifetimeOption)
    if container.contains(.keepAlive) {
        self.keepAlive = try container.decode(Bool?.self, forKey: .keepAlive)
    }
    if container.contains(.pool) {
        self.pool = try container.decode(PoolSpecificationData?.self, forKey: .pool)
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
    if self.autoPoolIdPrefix != nil {try container.encode(self.autoPoolIdPrefix, forKey: .autoPoolIdPrefix)}
    try container.encode(self.poolLifetimeOption, forKey: .poolLifetimeOption)
    if self.keepAlive != nil {try container.encode(self.keepAlive, forKey: .keepAlive)}
    if self.pool != nil {try container.encode(self.pool as! PoolSpecificationData?, forKey: .pool)}
  }
}

extension DataFactory {
  public static func createAutoPoolSpecificationProtocol(poolLifetimeOption: PoolLifetimeOptionEnum) -> AutoPoolSpecificationProtocol {
    return AutoPoolSpecificationData(poolLifetimeOption: poolLifetimeOption)
  }
}
