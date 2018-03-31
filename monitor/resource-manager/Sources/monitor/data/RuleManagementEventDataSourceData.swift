// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RuleManagementEventDataSourceData : RuleManagementEventDataSourceProtocol, RuleDataSourceProtocol {
    public var resourceUri: String?
    public var eventName: String?
    public var eventSource: String?
    public var level: String?
    public var operationName: String?
    public var resourceGroupName: String?
    public var resourceProviderName: String?
    public var status: String?
    public var subStatus: String?
    public var claims: RuleManagementEventClaimsDataSourceProtocol?

        enum CodingKeys: String, CodingKey {case resourceUri = "resourceUri"
        case eventName = "eventName"
        case eventSource = "eventSource"
        case level = "level"
        case operationName = "operationName"
        case resourceGroupName = "resourceGroupName"
        case resourceProviderName = "resourceProviderName"
        case status = "status"
        case subStatus = "subStatus"
        case claims = "claims"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.resourceUri) {
        self.resourceUri = try container.decode(String?.self, forKey: .resourceUri)
    }
    if container.contains(.eventName) {
        self.eventName = try container.decode(String?.self, forKey: .eventName)
    }
    if container.contains(.eventSource) {
        self.eventSource = try container.decode(String?.self, forKey: .eventSource)
    }
    if container.contains(.level) {
        self.level = try container.decode(String?.self, forKey: .level)
    }
    if container.contains(.operationName) {
        self.operationName = try container.decode(String?.self, forKey: .operationName)
    }
    if container.contains(.resourceGroupName) {
        self.resourceGroupName = try container.decode(String?.self, forKey: .resourceGroupName)
    }
    if container.contains(.resourceProviderName) {
        self.resourceProviderName = try container.decode(String?.self, forKey: .resourceProviderName)
    }
    if container.contains(.status) {
        self.status = try container.decode(String?.self, forKey: .status)
    }
    if container.contains(.subStatus) {
        self.subStatus = try container.decode(String?.self, forKey: .subStatus)
    }
    if container.contains(.claims) {
        self.claims = try container.decode(RuleManagementEventClaimsDataSourceData?.self, forKey: .claims)
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
    if self.resourceUri != nil { try container.encode(self.resourceUri, forKey: .resourceUri) }
    if self.eventName != nil { try container.encode(self.eventName, forKey: .eventName) }
    if self.eventSource != nil { try container.encode(self.eventSource, forKey: .eventSource) }
    if self.level != nil { try container.encode(self.level, forKey: .level) }
    if self.operationName != nil { try container.encode(self.operationName, forKey: .operationName) }
    if self.resourceGroupName != nil { try container.encode(self.resourceGroupName, forKey: .resourceGroupName) }
    if self.resourceProviderName != nil { try container.encode(self.resourceProviderName, forKey: .resourceProviderName) }
    if self.status != nil { try container.encode(self.status, forKey: .status) }
    if self.subStatus != nil { try container.encode(self.subStatus, forKey: .subStatus) }
    if self.claims != nil { try container.encode(self.claims as! RuleManagementEventClaimsDataSourceData?, forKey: .claims) }
  }
}

extension DataFactory {
  public static func createRuleManagementEventDataSourceProtocol() -> RuleManagementEventDataSourceProtocol {
    return RuleManagementEventDataSourceData()
  }
}
