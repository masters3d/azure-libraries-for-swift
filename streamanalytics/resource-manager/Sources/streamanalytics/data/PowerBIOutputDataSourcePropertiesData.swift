// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PowerBIOutputDataSourcePropertiesData : PowerBIOutputDataSourcePropertiesProtocol, OAuthBasedDataSourcePropertiesProtocol {
    public var refreshToken: String?
    public var tokenUserPrincipalName: String?
    public var tokenUserDisplayName: String?
    public var dataset: String?
    public var table: String?
    public var groupId: String?
    public var groupName: String?

        enum CodingKeys: String, CodingKey {case refreshToken = "refreshToken"
        case tokenUserPrincipalName = "tokenUserPrincipalName"
        case tokenUserDisplayName = "tokenUserDisplayName"
        case dataset = "dataset"
        case table = "table"
        case groupId = "groupId"
        case groupName = "groupName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.refreshToken) {
        self.refreshToken = try container.decode(String?.self, forKey: .refreshToken)
    }
    if container.contains(.tokenUserPrincipalName) {
        self.tokenUserPrincipalName = try container.decode(String?.self, forKey: .tokenUserPrincipalName)
    }
    if container.contains(.tokenUserDisplayName) {
        self.tokenUserDisplayName = try container.decode(String?.self, forKey: .tokenUserDisplayName)
    }
    if container.contains(.dataset) {
        self.dataset = try container.decode(String?.self, forKey: .dataset)
    }
    if container.contains(.table) {
        self.table = try container.decode(String?.self, forKey: .table)
    }
    if container.contains(.groupId) {
        self.groupId = try container.decode(String?.self, forKey: .groupId)
    }
    if container.contains(.groupName) {
        self.groupName = try container.decode(String?.self, forKey: .groupName)
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
    if self.refreshToken != nil {try container.encode(self.refreshToken, forKey: .refreshToken)}
    if self.tokenUserPrincipalName != nil {try container.encode(self.tokenUserPrincipalName, forKey: .tokenUserPrincipalName)}
    if self.tokenUserDisplayName != nil {try container.encode(self.tokenUserDisplayName, forKey: .tokenUserDisplayName)}
    if self.dataset != nil {try container.encode(self.dataset, forKey: .dataset)}
    if self.table != nil {try container.encode(self.table, forKey: .table)}
    if self.groupId != nil {try container.encode(self.groupId, forKey: .groupId)}
    if self.groupName != nil {try container.encode(self.groupName, forKey: .groupName)}
  }
}

extension DataFactory {
  public static func createPowerBIOutputDataSourcePropertiesProtocol() -> PowerBIOutputDataSourcePropertiesProtocol {
    return PowerBIOutputDataSourcePropertiesData()
  }
}