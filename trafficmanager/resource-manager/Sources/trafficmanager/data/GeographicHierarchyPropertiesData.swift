// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GeographicHierarchyPropertiesData : GeographicHierarchyPropertiesProtocol {
    public var geographicHierarchy: RegionProtocol?

        enum CodingKeys: String, CodingKey {case geographicHierarchy = "geographicHierarchy"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.geographicHierarchy) {
        self.geographicHierarchy = try container.decode(RegionData?.self, forKey: .geographicHierarchy)
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
    if self.geographicHierarchy != nil { try container.encode(self.geographicHierarchy as! RegionData?, forKey: .geographicHierarchy) }
  }
}

extension DataFactory {
  public static func createGeographicHierarchyPropertiesProtocol() -> GeographicHierarchyPropertiesProtocol {
    return GeographicHierarchyPropertiesData()
  }
}
