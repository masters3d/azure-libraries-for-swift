// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VerificationIPFlowParametersData : VerificationIPFlowParametersProtocol {
    public var targetResourceId: String
    public var direction: DirectionEnum
    public var _protocol: ProtocolEnum
    public var localPort: String
    public var remotePort: String
    public var localIPAddress: String
    public var remoteIPAddress: String
    public var targetNicResourceId: String?

        enum CodingKeys: String, CodingKey {case targetResourceId = "targetResourceId"
        case direction = "direction"
        case _protocol = "protocol"
        case localPort = "localPort"
        case remotePort = "remotePort"
        case localIPAddress = "localIPAddress"
        case remoteIPAddress = "remoteIPAddress"
        case targetNicResourceId = "targetNicResourceId"
        }

  public init(targetResourceId: String, direction: DirectionEnum, _protocol: ProtocolEnum, localPort: String, remotePort: String, localIPAddress: String, remoteIPAddress: String)  {
    self.targetResourceId = targetResourceId
    self.direction = direction
    self._protocol = _protocol
    self.localPort = localPort
    self.remotePort = remotePort
    self.localIPAddress = localIPAddress
    self.remoteIPAddress = remoteIPAddress
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.targetResourceId = try container.decode(String.self, forKey: .targetResourceId)
    self.direction = try container.decode(DirectionEnum.self, forKey: .direction)
    self._protocol = try container.decode(ProtocolEnum.self, forKey: ._protocol)
    self.localPort = try container.decode(String.self, forKey: .localPort)
    self.remotePort = try container.decode(String.self, forKey: .remotePort)
    self.localIPAddress = try container.decode(String.self, forKey: .localIPAddress)
    self.remoteIPAddress = try container.decode(String.self, forKey: .remoteIPAddress)
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
    try container.encode(self.direction, forKey: .direction)
    try container.encode(self._protocol, forKey: ._protocol)
    try container.encode(self.localPort, forKey: .localPort)
    try container.encode(self.remotePort, forKey: .remotePort)
    try container.encode(self.localIPAddress, forKey: .localIPAddress)
    try container.encode(self.remoteIPAddress, forKey: .remoteIPAddress)
    if self.targetNicResourceId != nil {try container.encode(self.targetNicResourceId, forKey: .targetNicResourceId)}
  }
}

extension DataFactory {
  public static func createVerificationIPFlowParametersProtocol(targetResourceId: String, direction: DirectionEnum, _protocol: ProtocolEnum, localPort: String, remotePort: String, localIPAddress: String, remoteIPAddress: String) -> VerificationIPFlowParametersProtocol {
    return VerificationIPFlowParametersData(targetResourceId: targetResourceId, direction: direction, _protocol: _protocol, localPort: localPort, remotePort: remotePort, localIPAddress: localIPAddress, remoteIPAddress: remoteIPAddress)
  }
}