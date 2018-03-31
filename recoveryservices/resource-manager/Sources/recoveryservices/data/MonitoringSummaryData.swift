// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MonitoringSummaryData : MonitoringSummaryProtocol {
    public var unHealthyVmCount: Int32?
    public var unHealthyProviderCount: Int32?
    public var eventsCount: Int32?
    public var deprecatedProviderCount: Int32?
    public var supportedProviderCount: Int32?
    public var unsupportedProviderCount: Int32?

        enum CodingKeys: String, CodingKey {case unHealthyVmCount = "unHealthyVmCount"
        case unHealthyProviderCount = "unHealthyProviderCount"
        case eventsCount = "eventsCount"
        case deprecatedProviderCount = "deprecatedProviderCount"
        case supportedProviderCount = "supportedProviderCount"
        case unsupportedProviderCount = "unsupportedProviderCount"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.unHealthyVmCount) {
        self.unHealthyVmCount = try container.decode(Int32?.self, forKey: .unHealthyVmCount)
    }
    if container.contains(.unHealthyProviderCount) {
        self.unHealthyProviderCount = try container.decode(Int32?.self, forKey: .unHealthyProviderCount)
    }
    if container.contains(.eventsCount) {
        self.eventsCount = try container.decode(Int32?.self, forKey: .eventsCount)
    }
    if container.contains(.deprecatedProviderCount) {
        self.deprecatedProviderCount = try container.decode(Int32?.self, forKey: .deprecatedProviderCount)
    }
    if container.contains(.supportedProviderCount) {
        self.supportedProviderCount = try container.decode(Int32?.self, forKey: .supportedProviderCount)
    }
    if container.contains(.unsupportedProviderCount) {
        self.unsupportedProviderCount = try container.decode(Int32?.self, forKey: .unsupportedProviderCount)
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
    if self.unHealthyVmCount != nil {try container.encode(self.unHealthyVmCount, forKey: .unHealthyVmCount)}
    if self.unHealthyProviderCount != nil {try container.encode(self.unHealthyProviderCount, forKey: .unHealthyProviderCount)}
    if self.eventsCount != nil {try container.encode(self.eventsCount, forKey: .eventsCount)}
    if self.deprecatedProviderCount != nil {try container.encode(self.deprecatedProviderCount, forKey: .deprecatedProviderCount)}
    if self.supportedProviderCount != nil {try container.encode(self.supportedProviderCount, forKey: .supportedProviderCount)}
    if self.unsupportedProviderCount != nil {try container.encode(self.unsupportedProviderCount, forKey: .unsupportedProviderCount)}
  }
}

extension DataFactory {
  public static func createMonitoringSummaryProtocol() -> MonitoringSummaryProtocol {
    return MonitoringSummaryData()
  }
}
