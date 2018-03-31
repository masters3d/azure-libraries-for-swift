// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ExportDevicesRequestData : ExportDevicesRequestProtocol {
    public var exportBlobContainerUri: String
    public var excludeKeys: Bool

        enum CodingKeys: String, CodingKey {case exportBlobContainerUri = "ExportBlobContainerUri"
        case excludeKeys = "ExcludeKeys"
        }

  public init(exportBlobContainerUri: String, excludeKeys: Bool) {
    self.exportBlobContainerUri = exportBlobContainerUri
    self.excludeKeys = excludeKeys
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.exportBlobContainerUri = try container.decode(String.self, forKey: .exportBlobContainerUri)
    self.excludeKeys = try container.decode(Bool.self, forKey: .excludeKeys)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.exportBlobContainerUri, forKey: .exportBlobContainerUri)
    try container.encode(self.excludeKeys, forKey: .excludeKeys)
  }
}

extension DataFactory {
  public static func createExportDevicesRequestProtocol(exportBlobContainerUri: String, excludeKeys: Bool) -> ExportDevicesRequestProtocol {
    return ExportDevicesRequestData(exportBlobContainerUri: exportBlobContainerUri, excludeKeys: excludeKeys)
  }
}
