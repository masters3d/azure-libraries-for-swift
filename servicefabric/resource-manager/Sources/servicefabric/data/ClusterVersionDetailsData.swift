// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ClusterVersionDetailsData : ClusterVersionDetailsProtocol {
    public var codeVersion: String?
    public var supportExpiryUtc: String?
    public var environment: EnvironmentEnum?

        enum CodingKeys: String, CodingKey {case codeVersion = "codeVersion"
        case supportExpiryUtc = "supportExpiryUtc"
        case environment = "environment"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.codeVersion) {
        self.codeVersion = try container.decode(String?.self, forKey: .codeVersion)
    }
    if container.contains(.supportExpiryUtc) {
        self.supportExpiryUtc = try container.decode(String?.self, forKey: .supportExpiryUtc)
    }
    if container.contains(.environment) {
        self.environment = try container.decode(EnvironmentEnum?.self, forKey: .environment)
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
    if self.codeVersion != nil { try container.encode(self.codeVersion, forKey: .codeVersion) }
    if self.supportExpiryUtc != nil { try container.encode(self.supportExpiryUtc, forKey: .supportExpiryUtc) }
    if self.environment != nil { try container.encode(self.environment, forKey: .environment) }
  }
}

extension DataFactory {
  public static func createClusterVersionDetailsProtocol() -> ClusterVersionDetailsProtocol {
    return ClusterVersionDetailsData()
  }
}
