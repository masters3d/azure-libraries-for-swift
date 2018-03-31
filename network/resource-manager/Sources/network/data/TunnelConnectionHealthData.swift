// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TunnelConnectionHealthData : TunnelConnectionHealthProtocol {
    public var tunnel: String?
    public var connectionStatus: VirtualNetworkGatewayConnectionStatusEnum?
    public var ingressBytesTransferred: Int64?
    public var egressBytesTransferred: Int64?
    public var lastConnectionEstablishedUtcTime: String?

        enum CodingKeys: String, CodingKey {case tunnel = "tunnel"
        case connectionStatus = "connectionStatus"
        case ingressBytesTransferred = "ingressBytesTransferred"
        case egressBytesTransferred = "egressBytesTransferred"
        case lastConnectionEstablishedUtcTime = "lastConnectionEstablishedUtcTime"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.tunnel) {
        self.tunnel = try container.decode(String?.self, forKey: .tunnel)
    }
    if container.contains(.connectionStatus) {
        self.connectionStatus = try container.decode(VirtualNetworkGatewayConnectionStatusEnum?.self, forKey: .connectionStatus)
    }
    if container.contains(.ingressBytesTransferred) {
        self.ingressBytesTransferred = try container.decode(Int64?.self, forKey: .ingressBytesTransferred)
    }
    if container.contains(.egressBytesTransferred) {
        self.egressBytesTransferred = try container.decode(Int64?.self, forKey: .egressBytesTransferred)
    }
    if container.contains(.lastConnectionEstablishedUtcTime) {
        self.lastConnectionEstablishedUtcTime = try container.decode(String?.self, forKey: .lastConnectionEstablishedUtcTime)
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
    if self.tunnel != nil {try container.encode(self.tunnel, forKey: .tunnel)}
    if self.connectionStatus != nil {try container.encode(self.connectionStatus, forKey: .connectionStatus)}
    if self.ingressBytesTransferred != nil {try container.encode(self.ingressBytesTransferred, forKey: .ingressBytesTransferred)}
    if self.egressBytesTransferred != nil {try container.encode(self.egressBytesTransferred, forKey: .egressBytesTransferred)}
    if self.lastConnectionEstablishedUtcTime != nil {try container.encode(self.lastConnectionEstablishedUtcTime, forKey: .lastConnectionEstablishedUtcTime)}
  }
}

extension DataFactory {
  public static func createTunnelConnectionHealthProtocol() -> TunnelConnectionHealthProtocol {
    return TunnelConnectionHealthData()
  }
}
