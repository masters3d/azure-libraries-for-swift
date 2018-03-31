// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NetworkProfileData : NetworkProfileProtocol {
    public var networkInterfaces: [NetworkInterfaceReferenceProtocol?]?

        enum CodingKeys: String, CodingKey {case networkInterfaces = "networkInterfaces"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.networkInterfaces) {
        self.networkInterfaces = try container.decode([NetworkInterfaceReferenceData?]?.self, forKey: .networkInterfaces)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.networkInterfaces != nil { try container.encode(self.networkInterfaces as! [NetworkInterfaceReferenceData?]?, forKey: .networkInterfaces) }
  }
}

extension DataFactory {
  public static func createNetworkProfileProtocol() -> NetworkProfileProtocol {
    return NetworkProfileData()
  }
}
