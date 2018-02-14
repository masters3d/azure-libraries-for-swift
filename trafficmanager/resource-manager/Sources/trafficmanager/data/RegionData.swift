// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RegionData : RegionProtocol {
    public var code: String?
    public var name: String?
    public var regions: [RegionProtocol?]?

        enum CodingKeys: String, CodingKey {case code = "code"
        case name = "name"
        case regions = "regions"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.code) {
        self.code = try container.decode(String?.self, forKey: .code)
    }
    if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.regions) {
        self.regions = try container.decode([RegionData?]?.self, forKey: .regions)
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
    if self.code != nil {try container.encode(self.code, forKey: .code)}
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.regions != nil {try container.encode(self.regions as! [RegionData?]?, forKey: .regions)}
  }
}

extension DataFactory {
  public static func createRegionProtocol() -> RegionProtocol {
    return RegionData()
  }
}
