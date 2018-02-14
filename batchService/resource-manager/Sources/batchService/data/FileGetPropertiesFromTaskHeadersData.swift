// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FileGetPropertiesFromTaskHeadersData : FileGetPropertiesFromTaskHeadersProtocol {
    public var clientRequestId: String?
    public var requestId: String?
    public var eTag: String?
    public var lastModified: Date?
    public var ocpCreationTime: Date?
    public var ocpBatchFileIsdirectory: Bool?
    public var ocpBatchFileUrl: String?
    public var ocpBatchFileMode: String?
    public var contentType: String?
    public var contentLength: Int64?

        enum CodingKeys: String, CodingKey {case clientRequestId = "client-request-id"
        case requestId = "request-id"
        case eTag = "ETag"
        case lastModified = "Last-Modified"
        case ocpCreationTime = "ocp-creation-time"
        case ocpBatchFileIsdirectory = "ocp-batch-file-isdirectory"
        case ocpBatchFileUrl = "ocp-batch-file-url"
        case ocpBatchFileMode = "ocp-batch-file-mode"
        case contentType = "Content-Type"
        case contentLength = "Content-Length"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.clientRequestId) {
        self.clientRequestId = try container.decode(String?.self, forKey: .clientRequestId)
    }
    if container.contains(.requestId) {
        self.requestId = try container.decode(String?.self, forKey: .requestId)
    }
    if container.contains(.eTag) {
        self.eTag = try container.decode(String?.self, forKey: .eTag)
    }
    if container.contains(.lastModified) {
        self.lastModified = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastModified)), format: .dateTimeRfc1123)
    }
    if container.contains(.ocpCreationTime) {
        self.ocpCreationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .ocpCreationTime)), format: .dateTimeRfc1123)
    }
    if container.contains(.ocpBatchFileIsdirectory) {
        self.ocpBatchFileIsdirectory = try container.decode(Bool?.self, forKey: .ocpBatchFileIsdirectory)
    }
    if container.contains(.ocpBatchFileUrl) {
        self.ocpBatchFileUrl = try container.decode(String?.self, forKey: .ocpBatchFileUrl)
    }
    if container.contains(.ocpBatchFileMode) {
        self.ocpBatchFileMode = try container.decode(String?.self, forKey: .ocpBatchFileMode)
    }
    if container.contains(.contentType) {
        self.contentType = try container.decode(String?.self, forKey: .contentType)
    }
    if container.contains(.contentLength) {
        self.contentLength = try container.decode(Int64?.self, forKey: .contentLength)
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
    if self.clientRequestId != nil {try container.encode(self.clientRequestId, forKey: .clientRequestId)}
    if self.requestId != nil {try container.encode(self.requestId, forKey: .requestId)}
    if self.eTag != nil {try container.encode(self.eTag, forKey: .eTag)}
    if self.lastModified != nil {
        try container.encode(DateConverter.toString(date: self.lastModified!, format: .dateTimeRfc1123), forKey: .lastModified)
    }
    if self.ocpCreationTime != nil {
        try container.encode(DateConverter.toString(date: self.ocpCreationTime!, format: .dateTimeRfc1123), forKey: .ocpCreationTime)
    }
    if self.ocpBatchFileIsdirectory != nil {try container.encode(self.ocpBatchFileIsdirectory, forKey: .ocpBatchFileIsdirectory)}
    if self.ocpBatchFileUrl != nil {try container.encode(self.ocpBatchFileUrl, forKey: .ocpBatchFileUrl)}
    if self.ocpBatchFileMode != nil {try container.encode(self.ocpBatchFileMode, forKey: .ocpBatchFileMode)}
    if self.contentType != nil {try container.encode(self.contentType, forKey: .contentType)}
    if self.contentLength != nil {try container.encode(self.contentLength, forKey: .contentLength)}
  }
}

extension DataFactory {
  public static func createFileGetPropertiesFromTaskHeadersProtocol() -> FileGetPropertiesFromTaskHeadersProtocol {
    return FileGetPropertiesFromTaskHeadersData()
  }
}
