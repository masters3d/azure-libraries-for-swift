// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SBNamespacePropertiesData : SBNamespacePropertiesProtocol {
    public var provisioningState: String?
    public var createdAt: Date?
    public var updatedAt: Date?
    public var serviceBusEndpoint: String?
    public var metricId: String?

        enum CodingKeys: String, CodingKey {case provisioningState = "provisioningState"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case serviceBusEndpoint = "serviceBusEndpoint"
        case metricId = "metricId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.createdAt) {
        self.createdAt = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdAt)), format: .dateTime)
    }
    if container.contains(.updatedAt) {
        self.updatedAt = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .updatedAt)), format: .dateTime)
    }
    if container.contains(.serviceBusEndpoint) {
        self.serviceBusEndpoint = try container.decode(String?.self, forKey: .serviceBusEndpoint)
    }
    if container.contains(.metricId) {
        self.metricId = try container.decode(String?.self, forKey: .metricId)
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
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.createdAt != nil {
        try container.encode(DateConverter.toString(date: self.createdAt!, format: .dateTime), forKey: .createdAt)
    }
    if self.updatedAt != nil {
        try container.encode(DateConverter.toString(date: self.updatedAt!, format: .dateTime), forKey: .updatedAt)
    }
    if self.serviceBusEndpoint != nil {try container.encode(self.serviceBusEndpoint, forKey: .serviceBusEndpoint)}
    if self.metricId != nil {try container.encode(self.metricId, forKey: .metricId)}
  }
}

extension DataFactory {
  public static func createSBNamespacePropertiesProtocol() -> SBNamespacePropertiesProtocol {
    return SBNamespacePropertiesData()
  }
}
