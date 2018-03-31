// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NextHopParametersData : NextHopParametersProtocol {
    public var targetResourceId: String
    public var sourceIPAddress: String
    public var destinationIPAddress: String
    public var targetNicResourceId: String?

        enum CodingKeys: String, CodingKey {case targetResourceId = "targetResourceId"
        case sourceIPAddress = "sourceIPAddress"
        case destinationIPAddress = "destinationIPAddress"
        case targetNicResourceId = "targetNicResourceId"
        }

  public init(targetResourceId: String, sourceIPAddress: String, destinationIPAddress: String)  {
    self.targetResourceId = targetResourceId
    self.sourceIPAddress = sourceIPAddress
    self.destinationIPAddress = destinationIPAddress
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.targetResourceId = try container.decode(String.self, forKey: .targetResourceId)
    self.sourceIPAddress = try container.decode(String.self, forKey: .sourceIPAddress)
    self.destinationIPAddress = try container.decode(String.self, forKey: .destinationIPAddress)
    if container.contains(.targetNicResourceId) {
        self.targetNicResourceId = try container.decode(String?.self, forKey: .targetNicResourceId)
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
    try container.encode(self.targetResourceId, forKey: .targetResourceId)
    try container.encode(self.sourceIPAddress, forKey: .sourceIPAddress)
    try container.encode(self.destinationIPAddress, forKey: .destinationIPAddress)
    if self.targetNicResourceId != nil {try container.encode(self.targetNicResourceId, forKey: .targetNicResourceId)}
  }
}

extension DataFactory {
  public static func createNextHopParametersProtocol(targetResourceId: String, sourceIPAddress: String, destinationIPAddress: String) -> NextHopParametersProtocol {
    return NextHopParametersData(targetResourceId: targetResourceId, sourceIPAddress: sourceIPAddress, destinationIPAddress: destinationIPAddress)
  }
}
