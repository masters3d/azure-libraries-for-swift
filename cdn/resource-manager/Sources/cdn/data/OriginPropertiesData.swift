// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct OriginPropertiesData : OriginPropertiesProtocol {
    public var hostName: String
    public var httpPort: Int32?
    public var httpsPort: Int32?
    public var resourceState: OriginResourceStateEnum?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case hostName = "hostName"
        case httpPort = "httpPort"
        case httpsPort = "httpsPort"
        case resourceState = "resourceState"
        case provisioningState = "provisioningState"
        }

  public init(hostName: String)  {
    self.hostName = hostName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.hostName = try container.decode(String.self, forKey: .hostName)
    if container.contains(.httpPort) {
        self.httpPort = try container.decode(Int32?.self, forKey: .httpPort)
    }
    if container.contains(.httpsPort) {
        self.httpsPort = try container.decode(Int32?.self, forKey: .httpsPort)
    }
    if container.contains(.resourceState) {
        self.resourceState = try container.decode(OriginResourceStateEnum?.self, forKey: .resourceState)
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
    try container.encode(self.hostName, forKey: .hostName)
    if self.httpPort != nil {try container.encode(self.httpPort, forKey: .httpPort)}
    if self.httpsPort != nil {try container.encode(self.httpsPort, forKey: .httpsPort)}
    if self.resourceState != nil {try container.encode(self.resourceState, forKey: .resourceState)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createOriginPropertiesProtocol(hostName: String) -> OriginPropertiesProtocol {
    return OriginPropertiesData(hostName: hostName)
  }
}
