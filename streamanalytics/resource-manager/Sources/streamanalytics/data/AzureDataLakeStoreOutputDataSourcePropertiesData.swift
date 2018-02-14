// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureDataLakeStoreOutputDataSourcePropertiesData : AzureDataLakeStoreOutputDataSourcePropertiesProtocol, OAuthBasedDataSourcePropertiesProtocol {
    public var refreshToken: String?
    public var tokenUserPrincipalName: String?
    public var tokenUserDisplayName: String?
    public var accountName: String?
    public var tenantId: String?
    public var filePathPrefix: String?
    public var dateFormat: String?
    public var timeFormat: String?

        enum CodingKeys: String, CodingKey {case refreshToken = "refreshToken"
        case tokenUserPrincipalName = "tokenUserPrincipalName"
        case tokenUserDisplayName = "tokenUserDisplayName"
        case accountName = "accountName"
        case tenantId = "tenantId"
        case filePathPrefix = "filePathPrefix"
        case dateFormat = "dateFormat"
        case timeFormat = "timeFormat"
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
    if container.contains(.accountName) {
        self.accountName = try container.decode(String?.self, forKey: .accountName)
    }
    if container.contains(.tenantId) {
        self.tenantId = try container.decode(String?.self, forKey: .tenantId)
    }
    if container.contains(.filePathPrefix) {
        self.filePathPrefix = try container.decode(String?.self, forKey: .filePathPrefix)
    }
    if container.contains(.dateFormat) {
        self.dateFormat = try container.decode(String?.self, forKey: .dateFormat)
    }
    if container.contains(.timeFormat) {
        self.timeFormat = try container.decode(String?.self, forKey: .timeFormat)
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
    if self.accountName != nil {try container.encode(self.accountName, forKey: .accountName)}
    if self.tenantId != nil {try container.encode(self.tenantId, forKey: .tenantId)}
    if self.filePathPrefix != nil {try container.encode(self.filePathPrefix, forKey: .filePathPrefix)}
    if self.dateFormat != nil {try container.encode(self.dateFormat, forKey: .dateFormat)}
    if self.timeFormat != nil {try container.encode(self.timeFormat, forKey: .timeFormat)}
  }
}

extension DataFactory {
  public static func createAzureDataLakeStoreOutputDataSourcePropertiesProtocol() -> AzureDataLakeStoreOutputDataSourcePropertiesProtocol {
    return AzureDataLakeStoreOutputDataSourcePropertiesData()
  }
}
