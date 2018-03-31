// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ImportExportResponsePropertiesData : ImportExportResponsePropertiesProtocol {
    public var requestType: String?
    public var requestId: String?
    public var serverName: String?
    public var databaseName: String?
    public var status: String?
    public var lastModifiedTime: String?
    public var queuedTime: String?
    public var blobUri: String?
    public var errorMessage: String?

        enum CodingKeys: String, CodingKey {case requestType = "requestType"
        case requestId = "requestId"
        case serverName = "serverName"
        case databaseName = "databaseName"
        case status = "status"
        case lastModifiedTime = "lastModifiedTime"
        case queuedTime = "queuedTime"
        case blobUri = "blobUri"
        case errorMessage = "errorMessage"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.requestType) {
        self.requestType = try container.decode(String?.self, forKey: .requestType)
    }
    if container.contains(.requestId) {
        self.requestId = try container.decode(String?.self, forKey: .requestId)
    }
    if container.contains(.serverName) {
        self.serverName = try container.decode(String?.self, forKey: .serverName)
    }
    if container.contains(.databaseName) {
        self.databaseName = try container.decode(String?.self, forKey: .databaseName)
    }
    if container.contains(.status) {
        self.status = try container.decode(String?.self, forKey: .status)
    }
    if container.contains(.lastModifiedTime) {
        self.lastModifiedTime = try container.decode(String?.self, forKey: .lastModifiedTime)
    }
    if container.contains(.queuedTime) {
        self.queuedTime = try container.decode(String?.self, forKey: .queuedTime)
    }
    if container.contains(.blobUri) {
        self.blobUri = try container.decode(String?.self, forKey: .blobUri)
    }
    if container.contains(.errorMessage) {
        self.errorMessage = try container.decode(String?.self, forKey: .errorMessage)
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
    if self.requestType != nil { try container.encode(self.requestType, forKey: .requestType) }
    if self.requestId != nil { try container.encode(self.requestId, forKey: .requestId) }
    if self.serverName != nil { try container.encode(self.serverName, forKey: .serverName) }
    if self.databaseName != nil { try container.encode(self.databaseName, forKey: .databaseName) }
    if self.status != nil { try container.encode(self.status, forKey: .status) }
    if self.lastModifiedTime != nil { try container.encode(self.lastModifiedTime, forKey: .lastModifiedTime) }
    if self.queuedTime != nil { try container.encode(self.queuedTime, forKey: .queuedTime) }
    if self.blobUri != nil { try container.encode(self.blobUri, forKey: .blobUri) }
    if self.errorMessage != nil { try container.encode(self.errorMessage, forKey: .errorMessage) }
  }
}

extension DataFactory {
  public static func createImportExportResponsePropertiesProtocol() -> ImportExportResponsePropertiesProtocol {
    return ImportExportResponsePropertiesData()
  }
}
