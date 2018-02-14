// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EncryptionServiceData : EncryptionServiceProtocol {
    public var enabled: Bool?
    public var lastEnabledTime: Date?

        enum CodingKeys: String, CodingKey {case enabled = "enabled"
        case lastEnabledTime = "lastEnabledTime"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.enabled) {
        self.enabled = try container.decode(Bool?.self, forKey: .enabled)
    }
    if container.contains(.lastEnabledTime) {
        self.lastEnabledTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastEnabledTime)), format: .dateTime)
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
    if self.enabled != nil {try container.encode(self.enabled, forKey: .enabled)}
    if self.lastEnabledTime != nil {
        try container.encode(DateConverter.toString(date: self.lastEnabledTime!, format: .dateTime), forKey: .lastEnabledTime)
    }
  }
}

extension DataFactory {
  public static func createEncryptionServiceProtocol() -> EncryptionServiceProtocol {
    return EncryptionServiceData()
  }
}
