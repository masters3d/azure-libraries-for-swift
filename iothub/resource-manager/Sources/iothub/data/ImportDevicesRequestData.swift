// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ImportDevicesRequestData : ImportDevicesRequestProtocol {
    public var inputBlobContainerUri: String
    public var outputBlobContainerUri: String

        enum CodingKeys: String, CodingKey {case inputBlobContainerUri = "InputBlobContainerUri"
        case outputBlobContainerUri = "OutputBlobContainerUri"
        }

  public init(inputBlobContainerUri: String, outputBlobContainerUri: String) {
    self.inputBlobContainerUri = inputBlobContainerUri
    self.outputBlobContainerUri = outputBlobContainerUri
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.inputBlobContainerUri = try container.decode(String.self, forKey: .inputBlobContainerUri)
    self.outputBlobContainerUri = try container.decode(String.self, forKey: .outputBlobContainerUri)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.inputBlobContainerUri, forKey: .inputBlobContainerUri)
    try container.encode(self.outputBlobContainerUri, forKey: .outputBlobContainerUri)
  }
}

extension DataFactory {
  public static func createImportDevicesRequestProtocol(inputBlobContainerUri: String, outputBlobContainerUri: String) -> ImportDevicesRequestProtocol {
    return ImportDevicesRequestData(inputBlobContainerUri: inputBlobContainerUri, outputBlobContainerUri: outputBlobContainerUri)
  }
}
