// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GenerateUploadUriParameterData : GenerateUploadUriParameterProtocol {
    public var blobName: String?

        enum CodingKeys: String, CodingKey {case blobName = "blobName"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.blobName) {
        self.blobName = try container.decode(String?.self, forKey: .blobName)
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
    if self.blobName != nil { try container.encode(self.blobName, forKey: .blobName) }
  }
}

extension DataFactory {
  public static func createGenerateUploadUriParameterProtocol() -> GenerateUploadUriParameterProtocol {
    return GenerateUploadUriParameterData()
  }
}
