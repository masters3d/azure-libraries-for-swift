// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ClientDiscoveryForLogSpecificationData : ClientDiscoveryForLogSpecificationProtocol {
    public var name: String?
    public var displayName: String?
    public var blobDuration: String?

        enum CodingKeys: String, CodingKey {case name = "name"
        case displayName = "displayName"
        case blobDuration = "blobDuration"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.displayName) {
        self.displayName = try container.decode(String?.self, forKey: .displayName)
    }
    if container.contains(.blobDuration) {
        self.blobDuration = try container.decode(String?.self, forKey: .blobDuration)
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
    if self.name != nil { try container.encode(self.name, forKey: .name) }
    if self.displayName != nil { try container.encode(self.displayName, forKey: .displayName) }
    if self.blobDuration != nil { try container.encode(self.blobDuration, forKey: .blobDuration) }
  }
}

extension DataFactory {
  public static func createClientDiscoveryForLogSpecificationProtocol() -> ClientDiscoveryForLogSpecificationProtocol {
    return ClientDiscoveryForLogSpecificationData()
  }
}
