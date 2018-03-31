// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PortData : PortProtocol {
    public var _protocol: ContainerGroupNetworkProtocolEnum?
    public var port: Int32

        enum CodingKeys: String, CodingKey {case _protocol = "protocol"
        case port = "port"
        }

  public init(port: Int32) {
    self.port = port
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(._protocol) {
        self._protocol = try container.decode(ContainerGroupNetworkProtocolEnum?.self, forKey: ._protocol)
    }
    self.port = try container.decode(Int32.self, forKey: .port)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self._protocol != nil { try container.encode(self._protocol, forKey: ._protocol) }
    try container.encode(self.port, forKey: .port)
  }
}

extension DataFactory {
  public static func createPortProtocol(port: Int32) -> PortProtocol {
    return PortData(port: port)
  }
}
