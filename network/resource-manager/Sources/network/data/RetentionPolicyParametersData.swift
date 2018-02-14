// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RetentionPolicyParametersData : RetentionPolicyParametersProtocol {
    public var days: Int32?
    public var enabled: Bool?

        enum CodingKeys: String, CodingKey {case days = "days"
        case enabled = "enabled"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.days) {
        self.days = try container.decode(Int32?.self, forKey: .days)
    }
    if container.contains(.enabled) {
        self.enabled = try container.decode(Bool?.self, forKey: .enabled)
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
    if self.days != nil {try container.encode(self.days, forKey: .days)}
    if self.enabled != nil {try container.encode(self.enabled, forKey: .enabled)}
  }
}

extension DataFactory {
  public static func createRetentionPolicyParametersProtocol() -> RetentionPolicyParametersProtocol {
    return RetentionPolicyParametersData()
  }
}
