// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FileListFromComputeNodeHeadersData : FileListFromComputeNodeHeadersProtocol {
    public var clientRequestId: String?
    public var requestId: String?
    public var eTag: String?
    public var lastModified: Date?

        enum CodingKeys: String, CodingKey {case clientRequestId = "client-request-id"
        case requestId = "request-id"
        case eTag = "ETag"
        case lastModified = "Last-Modified"
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
  }
}

extension DataFactory {
  public static func createFileListFromComputeNodeHeadersProtocol() -> FileListFromComputeNodeHeadersProtocol {
    return FileListFromComputeNodeHeadersData()
  }
}
