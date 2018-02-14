// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NamespacePropertiesData : NamespacePropertiesProtocol {
    public var name: String?
    public var provisioningState: String?
    public var region: String?
    public var status: String?
    public var createdAt: Date?
    public var serviceBusEndpoint: String?
    public var subscriptionId: String?
    public var scaleUnit: String?
    public var enabled: Bool?
    public var critical: Bool?
    public var namespaceType: NamespaceTypeEnum?

        enum CodingKeys: String, CodingKey {case name = "name"
        case provisioningState = "provisioningState"
        case region = "region"
        case status = "status"
        case createdAt = "createdAt"
        case serviceBusEndpoint = "serviceBusEndpoint"
        case subscriptionId = "subscriptionId"
        case scaleUnit = "scaleUnit"
        case enabled = "enabled"
        case critical = "critical"
        case namespaceType = "namespaceType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.region) {
        self.region = try container.decode(String?.self, forKey: .region)
    }
    if container.contains(.status) {
        self.status = try container.decode(String?.self, forKey: .status)
    }
    if container.contains(.createdAt) {
        self.createdAt = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdAt)), format: .dateTime)
    }
    if container.contains(.serviceBusEndpoint) {
        self.serviceBusEndpoint = try container.decode(String?.self, forKey: .serviceBusEndpoint)
    }
    if container.contains(.subscriptionId) {
        self.subscriptionId = try container.decode(String?.self, forKey: .subscriptionId)
    }
    if container.contains(.scaleUnit) {
        self.scaleUnit = try container.decode(String?.self, forKey: .scaleUnit)
    }
    if container.contains(.enabled) {
        self.enabled = try container.decode(Bool?.self, forKey: .enabled)
    }
    if container.contains(.critical) {
        self.critical = try container.decode(Bool?.self, forKey: .critical)
    }
    if container.contains(.namespaceType) {
        self.namespaceType = try container.decode(NamespaceTypeEnum?.self, forKey: .namespaceType)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.region != nil {try container.encode(self.region, forKey: .region)}
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.createdAt != nil {
        try container.encode(DateConverter.toString(date: self.createdAt!, format: .dateTime), forKey: .createdAt)
    }
    if self.serviceBusEndpoint != nil {try container.encode(self.serviceBusEndpoint, forKey: .serviceBusEndpoint)}
    if self.subscriptionId != nil {try container.encode(self.subscriptionId, forKey: .subscriptionId)}
    if self.scaleUnit != nil {try container.encode(self.scaleUnit, forKey: .scaleUnit)}
    if self.enabled != nil {try container.encode(self.enabled, forKey: .enabled)}
    if self.critical != nil {try container.encode(self.critical, forKey: .critical)}
    if self.namespaceType != nil {try container.encode(self.namespaceType, forKey: .namespaceType)}
  }
}

extension DataFactory {
  public static func createNamespacePropertiesProtocol() -> NamespacePropertiesProtocol {
    return NamespacePropertiesData()
  }
}
