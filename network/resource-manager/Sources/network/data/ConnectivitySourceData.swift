// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ConnectivitySourceData : ConnectivitySourceProtocol {
    public var resourceId: String
    public var port: Int32?

        enum CodingKeys: String, CodingKey {case resourceId = "resourceId"
        case port = "port"
        }

  public init(resourceId: String)  {
    self.resourceId = resourceId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.resourceId = try container.decode(String.self, forKey: .resourceId)
    if container.contains(.port) {
        self.port = try container.decode(Int32?.self, forKey: .port)
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
    try container.encode(self.resourceId, forKey: .resourceId)
    if self.port != nil {try container.encode(self.port, forKey: .port)}
  }
}

extension DataFactory {
  public static func createConnectivitySourceProtocol(resourceId: String) -> ConnectivitySourceProtocol {
    return ConnectivitySourceData(resourceId: resourceId)
  }
}