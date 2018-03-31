// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ProbePropertiesFormatData : ProbePropertiesFormatProtocol {
    public var loadBalancingRules: [SubResourceProtocol?]?
    public var _protocol: ProbeProtocolEnum
    public var port: Int32
    public var intervalInSeconds: Int32?
    public var numberOfProbes: Int32?
    public var requestPath: String?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case loadBalancingRules = "loadBalancingRules"
        case _protocol = "protocol"
        case port = "port"
        case intervalInSeconds = "intervalInSeconds"
        case numberOfProbes = "numberOfProbes"
        case requestPath = "requestPath"
        case provisioningState = "provisioningState"
        }

  public init(_protocol: ProbeProtocolEnum, port: Int32)  {
    self._protocol = _protocol
    self.port = port
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.loadBalancingRules) {
        self.loadBalancingRules = try container.decode([SubResourceData?]?.self, forKey: .loadBalancingRules)
    }
    self._protocol = try container.decode(ProbeProtocolEnum.self, forKey: ._protocol)
    self.port = try container.decode(Int32.self, forKey: .port)
    if container.contains(.intervalInSeconds) {
        self.intervalInSeconds = try container.decode(Int32?.self, forKey: .intervalInSeconds)
    }
    if container.contains(.numberOfProbes) {
        self.numberOfProbes = try container.decode(Int32?.self, forKey: .numberOfProbes)
    }
    if container.contains(.requestPath) {
        self.requestPath = try container.decode(String?.self, forKey: .requestPath)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
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
    if self.loadBalancingRules != nil {try container.encode(self.loadBalancingRules as! [SubResourceData?]?, forKey: .loadBalancingRules)}
    try container.encode(self._protocol, forKey: ._protocol)
    try container.encode(self.port, forKey: .port)
    if self.intervalInSeconds != nil {try container.encode(self.intervalInSeconds, forKey: .intervalInSeconds)}
    if self.numberOfProbes != nil {try container.encode(self.numberOfProbes, forKey: .numberOfProbes)}
    if self.requestPath != nil {try container.encode(self.requestPath, forKey: .requestPath)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createProbePropertiesFormatProtocol(_protocol: ProbeProtocolEnum, port: Int32) -> ProbePropertiesFormatProtocol {
    return ProbePropertiesFormatData(_protocol: _protocol, port: port)
  }
}
