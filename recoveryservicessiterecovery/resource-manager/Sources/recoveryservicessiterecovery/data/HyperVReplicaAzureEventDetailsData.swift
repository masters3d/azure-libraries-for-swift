// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HyperVReplicaAzureEventDetailsData : HyperVReplicaAzureEventDetailsProtocol, EventProviderSpecificDetailsProtocol {
    public var containerName: String?
    public var fabricName: String?
    public var remoteContainerName: String?

        enum CodingKeys: String, CodingKey {case containerName = "containerName"
        case fabricName = "fabricName"
        case remoteContainerName = "remoteContainerName"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.containerName) {
        self.containerName = try container.decode(String?.self, forKey: .containerName)
    }
    if container.contains(.fabricName) {
        self.fabricName = try container.decode(String?.self, forKey: .fabricName)
    }
    if container.contains(.remoteContainerName) {
        self.remoteContainerName = try container.decode(String?.self, forKey: .remoteContainerName)
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
    if self.containerName != nil { try container.encode(self.containerName, forKey: .containerName) }
    if self.fabricName != nil { try container.encode(self.fabricName, forKey: .fabricName) }
    if self.remoteContainerName != nil { try container.encode(self.remoteContainerName, forKey: .remoteContainerName) }
  }
}

extension DataFactory {
  public static func createHyperVReplicaAzureEventDetailsProtocol() -> HyperVReplicaAzureEventDetailsProtocol {
    return HyperVReplicaAzureEventDetailsData()
  }
}
