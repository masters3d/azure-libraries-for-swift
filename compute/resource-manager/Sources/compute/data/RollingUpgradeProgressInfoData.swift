// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RollingUpgradeProgressInfoData : RollingUpgradeProgressInfoProtocol {
    public var successfulInstanceCount: Int32?
    public var failedInstanceCount: Int32?
    public var inProgressInstanceCount: Int32?
    public var pendingInstanceCount: Int32?

        enum CodingKeys: String, CodingKey {case successfulInstanceCount = "successfulInstanceCount"
        case failedInstanceCount = "failedInstanceCount"
        case inProgressInstanceCount = "inProgressInstanceCount"
        case pendingInstanceCount = "pendingInstanceCount"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.successfulInstanceCount) {
        self.successfulInstanceCount = try container.decode(Int32?.self, forKey: .successfulInstanceCount)
    }
    if container.contains(.failedInstanceCount) {
        self.failedInstanceCount = try container.decode(Int32?.self, forKey: .failedInstanceCount)
    }
    if container.contains(.inProgressInstanceCount) {
        self.inProgressInstanceCount = try container.decode(Int32?.self, forKey: .inProgressInstanceCount)
    }
    if container.contains(.pendingInstanceCount) {
        self.pendingInstanceCount = try container.decode(Int32?.self, forKey: .pendingInstanceCount)
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
    if self.successfulInstanceCount != nil { try container.encode(self.successfulInstanceCount, forKey: .successfulInstanceCount) }
    if self.failedInstanceCount != nil { try container.encode(self.failedInstanceCount, forKey: .failedInstanceCount) }
    if self.inProgressInstanceCount != nil { try container.encode(self.inProgressInstanceCount, forKey: .inProgressInstanceCount) }
    if self.pendingInstanceCount != nil { try container.encode(self.pendingInstanceCount, forKey: .pendingInstanceCount) }
  }
}

extension DataFactory {
  public static func createRollingUpgradeProgressInfoProtocol() -> RollingUpgradeProgressInfoProtocol {
    return RollingUpgradeProgressInfoData()
  }
}
