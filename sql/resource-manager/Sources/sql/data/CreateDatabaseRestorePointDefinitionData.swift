// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CreateDatabaseRestorePointDefinitionData : CreateDatabaseRestorePointDefinitionProtocol {
    public var restorePointLabel: String

        enum CodingKeys: String, CodingKey {case restorePointLabel = "restorePointLabel"
        }

  public init(restorePointLabel: String) {
    self.restorePointLabel = restorePointLabel
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.restorePointLabel = try container.decode(String.self, forKey: .restorePointLabel)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.restorePointLabel, forKey: .restorePointLabel)
  }
}

extension DataFactory {
  public static func createCreateDatabaseRestorePointDefinitionProtocol(restorePointLabel: String) -> CreateDatabaseRestorePointDefinitionProtocol {
    return CreateDatabaseRestorePointDefinitionData(restorePointLabel: restorePointLabel)
  }
}
