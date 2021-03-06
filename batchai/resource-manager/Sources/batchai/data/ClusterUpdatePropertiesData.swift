// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ClusterUpdatePropertiesData : ClusterUpdatePropertiesProtocol {
    public var scaleSettings: ScaleSettingsProtocol?

        enum CodingKeys: String, CodingKey {case scaleSettings = "scaleSettings"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.scaleSettings) {
        self.scaleSettings = try container.decode(ScaleSettingsData?.self, forKey: .scaleSettings)
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
    if self.scaleSettings != nil {try container.encode(self.scaleSettings as! ScaleSettingsData?, forKey: .scaleSettings)}
  }
}

extension DataFactory {
  public static func createClusterUpdatePropertiesProtocol() -> ClusterUpdatePropertiesProtocol {
    return ClusterUpdatePropertiesData()
  }
}
