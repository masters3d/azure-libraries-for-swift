// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureSqlDatabaseOutputDataSourcePropertiesData : AzureSqlDatabaseOutputDataSourcePropertiesProtocol, AzureSqlDatabaseDataSourcePropertiesProtocol {
    public var server: String?
    public var database: String?
    public var user: String?
    public var password: String?
    public var table: String?

        enum CodingKeys: String, CodingKey {case server = "server"
        case database = "database"
        case user = "user"
        case password = "password"
        case table = "table"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.server) {
        self.server = try container.decode(String?.self, forKey: .server)
    }
    if container.contains(.database) {
        self.database = try container.decode(String?.self, forKey: .database)
    }
    if container.contains(.user) {
        self.user = try container.decode(String?.self, forKey: .user)
    }
    if container.contains(.password) {
        self.password = try container.decode(String?.self, forKey: .password)
    }
    if container.contains(.table) {
        self.table = try container.decode(String?.self, forKey: .table)
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
    if self.server != nil {try container.encode(self.server, forKey: .server)}
    if self.database != nil {try container.encode(self.database, forKey: .database)}
    if self.user != nil {try container.encode(self.user, forKey: .user)}
    if self.password != nil {try container.encode(self.password, forKey: .password)}
    if self.table != nil {try container.encode(self.table, forKey: .table)}
  }
}

extension DataFactory {
  public static func createAzureSqlDatabaseOutputDataSourcePropertiesProtocol() -> AzureSqlDatabaseOutputDataSourcePropertiesProtocol {
    return AzureSqlDatabaseOutputDataSourcePropertiesData()
  }
}
