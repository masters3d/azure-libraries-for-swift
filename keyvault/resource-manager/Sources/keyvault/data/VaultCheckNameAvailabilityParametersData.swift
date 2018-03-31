// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VaultCheckNameAvailabilityParametersData : VaultCheckNameAvailabilityParametersProtocol {
    public var name: String
    public var type: String

        enum CodingKeys: String, CodingKey {case name = "name"
        case type = "type"
        }

  public init(name: String, type: String) {
    self.name = name
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    self.type = try container.decode(String.self, forKey: .type)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.name, forKey: .name)
    try container.encode(self.type, forKey: .type)
  }
}

extension DataFactory {
  public static func createVaultCheckNameAvailabilityParametersProtocol(name: String, type: String) -> VaultCheckNameAvailabilityParametersProtocol {
    return VaultCheckNameAvailabilityParametersData(name: name, type: type)
  }
}
