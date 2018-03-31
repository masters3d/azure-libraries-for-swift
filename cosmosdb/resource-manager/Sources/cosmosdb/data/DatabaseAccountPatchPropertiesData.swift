// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DatabaseAccountPatchPropertiesData : DatabaseAccountPatchPropertiesProtocol {
    public var capabilities: [CapabilityProtocol?]?

        enum CodingKeys: String, CodingKey {case capabilities = "capabilities"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.capabilities) {
        self.capabilities = try container.decode([CapabilityData?]?.self, forKey: .capabilities)
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
    if self.capabilities != nil {try container.encode(self.capabilities as! [CapabilityData?]?, forKey: .capabilities)}
  }
}

extension DataFactory {
  public static func createDatabaseAccountPatchPropertiesProtocol() -> DatabaseAccountPatchPropertiesProtocol {
    return DatabaseAccountPatchPropertiesData()
  }
}
