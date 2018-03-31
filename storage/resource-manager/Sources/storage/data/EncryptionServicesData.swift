// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EncryptionServicesData : EncryptionServicesProtocol {
    public var blob: EncryptionServiceProtocol?
    public var file: EncryptionServiceProtocol?
    public var table: EncryptionServiceProtocol?
    public var queue: EncryptionServiceProtocol?

        enum CodingKeys: String, CodingKey {case blob = "blob"
        case file = "file"
        case table = "table"
        case queue = "queue"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.blob) {
        self.blob = try container.decode(EncryptionServiceData?.self, forKey: .blob)
    }
    if container.contains(.file) {
        self.file = try container.decode(EncryptionServiceData?.self, forKey: .file)
    }
    if container.contains(.table) {
        self.table = try container.decode(EncryptionServiceData?.self, forKey: .table)
    }
    if container.contains(.queue) {
        self.queue = try container.decode(EncryptionServiceData?.self, forKey: .queue)
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
    if self.blob != nil {try container.encode(self.blob as! EncryptionServiceData?, forKey: .blob)}
    if self.file != nil {try container.encode(self.file as! EncryptionServiceData?, forKey: .file)}
    if self.table != nil {try container.encode(self.table as! EncryptionServiceData?, forKey: .table)}
    if self.queue != nil {try container.encode(self.queue as! EncryptionServiceData?, forKey: .queue)}
  }
}

extension DataFactory {
  public static func createEncryptionServicesProtocol() -> EncryptionServicesProtocol {
    return EncryptionServicesData()
  }
}
