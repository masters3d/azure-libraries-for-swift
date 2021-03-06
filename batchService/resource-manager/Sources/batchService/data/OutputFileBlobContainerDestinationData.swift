// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct OutputFileBlobContainerDestinationData : OutputFileBlobContainerDestinationProtocol {
    public var path: String?
    public var containerUrl: String

        enum CodingKeys: String, CodingKey {case path = "path"
        case containerUrl = "containerUrl"
        }

  public init(containerUrl: String)  {
    self.containerUrl = containerUrl
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.path) {
        self.path = try container.decode(String?.self, forKey: .path)
    }
    self.containerUrl = try container.decode(String.self, forKey: .containerUrl)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.path != nil {try container.encode(self.path, forKey: .path)}
    try container.encode(self.containerUrl, forKey: .containerUrl)
  }
}

extension DataFactory {
  public static func createOutputFileBlobContainerDestinationProtocol(containerUrl: String) -> OutputFileBlobContainerDestinationProtocol {
    return OutputFileBlobContainerDestinationData(containerUrl: containerUrl)
  }
}
