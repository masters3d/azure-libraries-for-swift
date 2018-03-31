// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureBlobStorageApplicationLogsConfigData : AzureBlobStorageApplicationLogsConfigProtocol {
    public var level: LogLevelEnum?
    public var sasUrl: String?
    public var retentionInDays: Int32?

        enum CodingKeys: String, CodingKey {case level = "level"
        case sasUrl = "sasUrl"
        case retentionInDays = "retentionInDays"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.level) {
        self.level = try container.decode(LogLevelEnum?.self, forKey: .level)
    }
    if container.contains(.sasUrl) {
        self.sasUrl = try container.decode(String?.self, forKey: .sasUrl)
    }
    if container.contains(.retentionInDays) {
        self.retentionInDays = try container.decode(Int32?.self, forKey: .retentionInDays)
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
    if self.level != nil {try container.encode(self.level, forKey: .level)}
    if self.sasUrl != nil {try container.encode(self.sasUrl, forKey: .sasUrl)}
    if self.retentionInDays != nil {try container.encode(self.retentionInDays, forKey: .retentionInDays)}
  }
}

extension DataFactory {
  public static func createAzureBlobStorageApplicationLogsConfigProtocol() -> AzureBlobStorageApplicationLogsConfigProtocol {
    return AzureBlobStorageApplicationLogsConfigData()
  }
}
