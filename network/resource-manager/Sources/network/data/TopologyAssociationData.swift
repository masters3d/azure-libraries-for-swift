// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TopologyAssociationData : TopologyAssociationProtocol {
    public var name: String?
    public var resourceId: String?
    public var associationType: AssociationTypeEnum?

        enum CodingKeys: String, CodingKey {case name = "name"
        case resourceId = "resourceId"
        case associationType = "associationType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.resourceId) {
        self.resourceId = try container.decode(String?.self, forKey: .resourceId)
    }
    if container.contains(.associationType) {
        self.associationType = try container.decode(AssociationTypeEnum?.self, forKey: .associationType)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.resourceId != nil {try container.encode(self.resourceId, forKey: .resourceId)}
    if self.associationType != nil {try container.encode(self.associationType, forKey: .associationType)}
  }
}

extension DataFactory {
  public static func createTopologyAssociationProtocol() -> TopologyAssociationProtocol {
    return TopologyAssociationData()
  }
}
