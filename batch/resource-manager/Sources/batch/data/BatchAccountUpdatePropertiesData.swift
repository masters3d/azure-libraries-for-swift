// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BatchAccountUpdatePropertiesData : BatchAccountUpdatePropertiesProtocol {
    public var autoStorage: AutoStorageBasePropertiesProtocol?

        enum CodingKeys: String, CodingKey {case autoStorage = "autoStorage"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.autoStorage) {
        self.autoStorage = try container.decode(AutoStorageBasePropertiesData?.self, forKey: .autoStorage)
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
    if self.autoStorage != nil {try container.encode(self.autoStorage as! AutoStorageBasePropertiesData?, forKey: .autoStorage)}
  }
}

extension DataFactory {
  public static func createBatchAccountUpdatePropertiesProtocol() -> BatchAccountUpdatePropertiesProtocol {
    return BatchAccountUpdatePropertiesData()
  }
}
