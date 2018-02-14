// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RemoteLoginInformationData : RemoteLoginInformationProtocol {
    public var nodeId: String
    public var ipAddress: String
    public var port: Double

        enum CodingKeys: String, CodingKey {case nodeId = "nodeId"
        case ipAddress = "ipAddress"
        case port = "port"
        }

  public init(nodeId: String, ipAddress: String, port: Double)  {
    self.nodeId = nodeId
    self.ipAddress = ipAddress
    self.port = port
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.nodeId = try container.decode(String.self, forKey: .nodeId)
    self.ipAddress = try container.decode(String.self, forKey: .ipAddress)
    self.port = try container.decode(Double.self, forKey: .port)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.nodeId, forKey: .nodeId)
    try container.encode(self.ipAddress, forKey: .ipAddress)
    try container.encode(self.port, forKey: .port)
  }
}

extension DataFactory {
  public static func createRemoteLoginInformationProtocol(nodeId: String, ipAddress: String, port: Double) -> RemoteLoginInformationProtocol {
    return RemoteLoginInformationData(nodeId: nodeId, ipAddress: ipAddress, port: port)
  }
}