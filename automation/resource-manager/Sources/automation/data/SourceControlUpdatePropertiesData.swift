// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SourceControlUpdatePropertiesData : SourceControlUpdatePropertiesProtocol {
    public var branch: String?
    public var folderPath: String?
    public var autoSync: Bool?
    public var publishRunbook: Bool?
    public var securityToken: String?
    public var description: String?

        enum CodingKeys: String, CodingKey {case branch = "branch"
        case folderPath = "folderPath"
        case autoSync = "autoSync"
        case publishRunbook = "publishRunbook"
        case securityToken = "securityToken"
        case description = "description"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
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
    if container.contains(.securityToken) {
        self.securityToken = try container.decode(String?.self, forKey: .securityToken)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
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
    if self.branch != nil {try container.encode(self.branch, forKey: .branch)}
    if self.folderPath != nil {try container.encode(self.folderPath, forKey: .folderPath)}
    if self.autoSync != nil {try container.encode(self.autoSync, forKey: .autoSync)}
    if self.publishRunbook != nil {try container.encode(self.publishRunbook, forKey: .publishRunbook)}
    if self.securityToken != nil {try container.encode(self.securityToken, forKey: .securityToken)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
  }
}

extension DataFactory {
  public static func createSourceControlUpdatePropertiesProtocol() -> SourceControlUpdatePropertiesProtocol {
    return SourceControlUpdatePropertiesData()
  }
}
