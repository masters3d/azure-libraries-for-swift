// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GatewayParametersPropertiesData : GatewayParametersPropertiesProtocol {
    public var upgradeMode: UpgradeModeEnum?

        enum CodingKeys: String, CodingKey {case upgradeMode = "upgradeMode"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.upgradeMode) {
        self.upgradeMode = try container.decode(UpgradeModeEnum?.self, forKey: .upgradeMode)
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
    if self.upgradeMode != nil {try container.encode(self.upgradeMode, forKey: .upgradeMode)}
  }
}

extension DataFactory {
  public static func createGatewayParametersPropertiesProtocol() -> GatewayParametersPropertiesProtocol {
    return GatewayParametersPropertiesData()
  }
}
