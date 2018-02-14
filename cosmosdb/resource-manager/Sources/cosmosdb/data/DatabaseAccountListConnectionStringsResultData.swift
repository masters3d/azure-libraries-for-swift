// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DatabaseAccountListConnectionStringsResultData : DatabaseAccountListConnectionStringsResultProtocol {
    public var connectionStrings: [DatabaseAccountConnectionStringProtocol?]?

        enum CodingKeys: String, CodingKey {case connectionStrings = "connectionStrings"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.connectionStrings) {
        self.connectionStrings = try container.decode([DatabaseAccountConnectionStringData?]?.self, forKey: .connectionStrings)
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
    if self.connectionStrings != nil {try container.encode(self.connectionStrings as! [DatabaseAccountConnectionStringData?]?, forKey: .connectionStrings)}
  }
}

extension DataFactory {
  public static func createDatabaseAccountListConnectionStringsResultProtocol() -> DatabaseAccountListConnectionStringsResultProtocol {
    return DatabaseAccountListConnectionStringsResultData()
  }
}
