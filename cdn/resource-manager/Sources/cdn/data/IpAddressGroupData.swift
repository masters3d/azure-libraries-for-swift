// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IpAddressGroupData : IpAddressGroupProtocol {
    public var deliveryRegion: String?
    public var ipv4Addresses: [CidrIpAddressProtocol?]?
    public var ipv6Addresses: [CidrIpAddressProtocol?]?

        enum CodingKeys: String, CodingKey {case deliveryRegion = "deliveryRegion"
        case ipv4Addresses = "ipv4Addresses"
        case ipv6Addresses = "ipv6Addresses"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.deliveryRegion) {
        self.deliveryRegion = try container.decode(String?.self, forKey: .deliveryRegion)
    }
    if container.contains(.ipv4Addresses) {
        self.ipv4Addresses = try container.decode([CidrIpAddressData?]?.self, forKey: .ipv4Addresses)
    }
    if container.contains(.ipv6Addresses) {
        self.ipv6Addresses = try container.decode([CidrIpAddressData?]?.self, forKey: .ipv6Addresses)
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
    if self.deliveryRegion != nil {try container.encode(self.deliveryRegion, forKey: .deliveryRegion)}
    if self.ipv4Addresses != nil {try container.encode(self.ipv4Addresses as! [CidrIpAddressData?]?, forKey: .ipv4Addresses)}
    if self.ipv6Addresses != nil {try container.encode(self.ipv6Addresses as! [CidrIpAddressData?]?, forKey: .ipv6Addresses)}
  }
}

extension DataFactory {
  public static func createIpAddressGroupProtocol() -> IpAddressGroupProtocol {
    return IpAddressGroupData()
  }
}
