// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualNetworkUsageData : VirtualNetworkUsageProtocol {
    public var currentValue: Double?
    public var id: String?
    public var limit: Double?
    public var name: VirtualNetworkUsageNameProtocol?
    public var unit: String?

        enum CodingKeys: String, CodingKey {case currentValue = "currentValue"
        case id = "id"
        case limit = "limit"
        case name = "name"
        case unit = "unit"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.currentValue) {
        self.currentValue = try container.decode(Double?.self, forKey: .currentValue)
    }
    if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.limit) {
        self.limit = try container.decode(Double?.self, forKey: .limit)
    }
    if container.contains(.name) {
        self.name = try container.decode(VirtualNetworkUsageNameData?.self, forKey: .name)
    }
    if container.contains(.unit) {
        self.unit = try container.decode(String?.self, forKey: .unit)
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
    if self.currentValue != nil {try container.encode(self.currentValue, forKey: .currentValue)}
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.limit != nil {try container.encode(self.limit, forKey: .limit)}
    if self.name != nil {try container.encode(self.name as! VirtualNetworkUsageNameData?, forKey: .name)}
    if self.unit != nil {try container.encode(self.unit, forKey: .unit)}
  }
}

extension DataFactory {
  public static func createVirtualNetworkUsageProtocol() -> VirtualNetworkUsageProtocol {
    return VirtualNetworkUsageData()
  }
}
