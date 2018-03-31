// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UpdateMobilityServiceRequestPropertiesData : UpdateMobilityServiceRequestPropertiesProtocol {
    public var runAsAccountId: String?

        enum CodingKeys: String, CodingKey {case runAsAccountId = "runAsAccountId"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.runAsAccountId) {
        self.runAsAccountId = try container.decode(String?.self, forKey: .runAsAccountId)
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
    if self.runAsAccountId != nil { try container.encode(self.runAsAccountId, forKey: .runAsAccountId) }
  }
}

extension DataFactory {
  public static func createUpdateMobilityServiceRequestPropertiesProtocol() -> UpdateMobilityServiceRequestPropertiesProtocol {
    return UpdateMobilityServiceRequestPropertiesData()
  }
}
