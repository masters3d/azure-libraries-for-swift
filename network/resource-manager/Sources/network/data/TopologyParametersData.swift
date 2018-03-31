// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TopologyParametersData : TopologyParametersProtocol {
    public var targetResourceGroupName: String?
    public var targetVirtualNetwork: SubResourceProtocol?
    public var targetSubnet: SubResourceProtocol?

        enum CodingKeys: String, CodingKey {case targetResourceGroupName = "targetResourceGroupName"
        case targetVirtualNetwork = "targetVirtualNetwork"
        case targetSubnet = "targetSubnet"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.targetResourceGroupName) {
        self.targetResourceGroupName = try container.decode(String?.self, forKey: .targetResourceGroupName)
    }
    if container.contains(.targetVirtualNetwork) {
        self.targetVirtualNetwork = try container.decode(SubResourceData?.self, forKey: .targetVirtualNetwork)
    }
    if container.contains(.targetSubnet) {
        self.targetSubnet = try container.decode(SubResourceData?.self, forKey: .targetSubnet)
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
    if self.targetResourceGroupName != nil { try container.encode(self.targetResourceGroupName, forKey: .targetResourceGroupName) }
    if self.targetVirtualNetwork != nil { try container.encode(self.targetVirtualNetwork as! SubResourceData?, forKey: .targetVirtualNetwork) }
    if self.targetSubnet != nil { try container.encode(self.targetSubnet as! SubResourceData?, forKey: .targetSubnet) }
  }
}

extension DataFactory {
  public static func createTopologyParametersProtocol() -> TopologyParametersProtocol {
    return TopologyParametersData()
  }
}
