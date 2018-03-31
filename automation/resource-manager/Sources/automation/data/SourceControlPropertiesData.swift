// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SourceControlPropertiesData : SourceControlPropertiesProtocol {
    public var repoUrl: String?
    public var branch: String?
    public var folderPath: String?
    public var autoSync: Bool?
    public var publishRunbook: Bool?
    public var sourceType: SourceTypeEnum?
    public var description: String?
    public var creationTime: Date?
    public var lastModifiedTime: Date?

        enum CodingKeys: String, CodingKey {case repoUrl = "repoUrl"
        case branch = "branch"
        case folderPath = "folderPath"
        case autoSync = "autoSync"
        case publishRunbook = "publishRunbook"
        case sourceType = "sourceType"
        case description = "description"
        case creationTime = "creationTime"
        case lastModifiedTime = "lastModifiedTime"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.repoUrl) {
        self.repoUrl = try container.decode(String?.self, forKey: .repoUrl)
    }
    if container.contains(.branch) {
        self.branch = try container.decode(String?.self, forKey: .branch)
    }
    if container.contains(.folderPath) {
        self.folderPath = try container.decode(String?.self, forKey: .folderPath)
    }
    if container.contains(.autoSync) {
        self.autoSync = try container.decode(Bool?.self, forKey: .autoSync)
    }
    if container.contains(.publishRunbook) {
        self.publishRunbook = try container.decode(Bool?.self, forKey: .publishRunbook)
    }
    if container.contains(.sourceType) {
        self.sourceType = try container.decode(SourceTypeEnum?.self, forKey: .sourceType)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.creationTime) {
        self.creationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .creationTime)), format: .dateTime)
    }
    if container.contains(.lastModifiedTime) {
        self.lastModifiedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastModifiedTime)), format: .dateTime)
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
    if self.repoUrl != nil {try container.encode(self.repoUrl, forKey: .repoUrl)}
    if self.branch != nil {try container.encode(self.branch, forKey: .branch)}
    if self.folderPath != nil {try container.encode(self.folderPath, forKey: .folderPath)}
    if self.autoSync != nil {try container.encode(self.autoSync, forKey: .autoSync)}
    if self.publishRunbook != nil {try container.encode(self.publishRunbook, forKey: .publishRunbook)}
    if self.sourceType != nil {try container.encode(self.sourceType, forKey: .sourceType)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.creationTime != nil {
        try container.encode(DateConverter.toString(date: self.creationTime!, format: .dateTime), forKey: .creationTime)
    }
    if self.lastModifiedTime != nil {
        try container.encode(DateConverter.toString(date: self.lastModifiedTime!, format: .dateTime), forKey: .lastModifiedTime)
    }
  }
}

extension DataFactory {
  public static func createSourceControlPropertiesProtocol() -> SourceControlPropertiesProtocol {
    return SourceControlPropertiesData()
  }
}
