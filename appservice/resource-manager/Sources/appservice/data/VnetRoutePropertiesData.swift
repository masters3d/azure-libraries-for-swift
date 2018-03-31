// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VnetRoutePropertiesData : VnetRoutePropertiesProtocol {
    public var vnetRouteName: String?
    public var startAddress: String?
    public var endAddress: String?
    public var routeType: RouteTypeEnum?

        enum CodingKeys: String, CodingKey {case vnetRouteName = "name"
        case startAddress = "startAddress"
        case endAddress = "endAddress"
        case routeType = "routeType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.vnetRouteName) {
        self.vnetRouteName = try container.decode(String?.self, forKey: .vnetRouteName)
    }
    if container.contains(.startAddress) {
        self.startAddress = try container.decode(String?.self, forKey: .startAddress)
    }
    if container.contains(.endAddress) {
        self.endAddress = try container.decode(String?.self, forKey: .endAddress)
    }
    if container.contains(.routeType) {
        self.routeType = try container.decode(RouteTypeEnum?.self, forKey: .routeType)
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
    if self.vnetRouteName != nil {try container.encode(self.vnetRouteName, forKey: .vnetRouteName)}
    if self.startAddress != nil {try container.encode(self.startAddress, forKey: .startAddress)}
    if self.endAddress != nil {try container.encode(self.endAddress, forKey: .endAddress)}
    if self.routeType != nil {try container.encode(self.routeType, forKey: .routeType)}
  }
}

extension DataFactory {
  public static func createVnetRoutePropertiesProtocol() -> VnetRoutePropertiesProtocol {
    return VnetRoutePropertiesData()
  }
}
