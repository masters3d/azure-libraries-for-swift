// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EdgeNodePropertiesData : EdgeNodePropertiesProtocol {
    public var ipAddressGroups: [IpAddressGroupProtocol]

        enum CodingKeys: String, CodingKey {case ipAddressGroups = "ipAddressGroups"
        }

  public init(ipAddressGroups: [IpAddressGroupProtocol])  {
    self.ipAddressGroups = ipAddressGroups
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.ipAddressGroups = try container.decode([IpAddressGroupData].self, forKey: .ipAddressGroups)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.ipAddressGroups as! [IpAddressGroupData], forKey: .ipAddressGroups)
  }
}

extension DataFactory {
  public static func createEdgeNodePropertiesProtocol(ipAddressGroups: [IpAddressGroupProtocol]) -> EdgeNodePropertiesProtocol {
    return EdgeNodePropertiesData(ipAddressGroups: ipAddressGroups)
  }
}
