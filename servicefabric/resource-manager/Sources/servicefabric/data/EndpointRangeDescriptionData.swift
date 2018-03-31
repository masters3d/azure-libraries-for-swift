// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EndpointRangeDescriptionData : EndpointRangeDescriptionProtocol {
    public var startPort: Int32
    public var endPort: Int32

        enum CodingKeys: String, CodingKey {case startPort = "startPort"
        case endPort = "endPort"
        }

  public init(startPort: Int32, endPort: Int32) {
    self.startPort = startPort
    self.endPort = endPort
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.startPort = try container.decode(Int32.self, forKey: .startPort)
    self.endPort = try container.decode(Int32.self, forKey: .endPort)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.startPort, forKey: .startPort)
    try container.encode(self.endPort, forKey: .endPort)
  }
}

extension DataFactory {
  public static func createEndpointRangeDescriptionProtocol(startPort: Int32, endPort: Int32) -> EndpointRangeDescriptionProtocol {
    return EndpointRangeDescriptionData(startPort: startPort, endPort: endPort)
  }
}
