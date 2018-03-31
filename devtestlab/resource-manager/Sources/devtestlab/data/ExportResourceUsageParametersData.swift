// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ExportResourceUsageParametersData : ExportResourceUsageParametersProtocol {
    public var blobStorageAbsoluteSasUri: String?
    public var usageStartDate: Date?

        enum CodingKeys: String, CodingKey {case blobStorageAbsoluteSasUri = "blobStorageAbsoluteSasUri"
        case usageStartDate = "usageStartDate"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.blobStorageAbsoluteSasUri) {
        self.blobStorageAbsoluteSasUri = try container.decode(String?.self, forKey: .blobStorageAbsoluteSasUri)
    }
    if container.contains(.usageStartDate) {
        self.usageStartDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .usageStartDate)), format: .dateTime)
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
    if self.blobStorageAbsoluteSasUri != nil { try container.encode(self.blobStorageAbsoluteSasUri, forKey: .blobStorageAbsoluteSasUri) }
    if self.usageStartDate != nil {
        try container.encode(DateConverter.toString(date: self.usageStartDate!, format: .dateTime), forKey: .usageStartDate)
    }
  }
}

extension DataFactory {
  public static func createExportResourceUsageParametersProtocol() -> ExportResourceUsageParametersProtocol {
    return ExportResourceUsageParametersData()
  }
}
