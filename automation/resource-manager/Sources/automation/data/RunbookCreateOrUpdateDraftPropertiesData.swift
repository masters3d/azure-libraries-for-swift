// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RunbookCreateOrUpdateDraftPropertiesData : RunbookCreateOrUpdateDraftPropertiesProtocol {
    public var logVerbose: Bool?
    public var logProgress: Bool?
    public var runbookType: RunbookTypeEnumEnum
    public var draft: RunbookDraftProtocol
    public var description: String?
    public var logActivityTrace: Int32?

        enum CodingKeys: String, CodingKey {case logVerbose = "logVerbose"
        case logProgress = "logProgress"
        case runbookType = "runbookType"
        case draft = "draft"
        case description = "description"
        case logActivityTrace = "logActivityTrace"
        }

  public init(runbookType: RunbookTypeEnumEnum, draft: RunbookDraftProtocol)  {
    self.runbookType = runbookType
    self.draft = draft
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.logVerbose) {
        self.logVerbose = try container.decode(Bool?.self, forKey: .logVerbose)
    }
    if container.contains(.logProgress) {
        self.logProgress = try container.decode(Bool?.self, forKey: .logProgress)
    }
    self.runbookType = try container.decode(RunbookTypeEnumEnum.self, forKey: .runbookType)
    self.draft = try container.decode(RunbookDraftData.self, forKey: .draft)
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.logActivityTrace) {
        self.logActivityTrace = try container.decode(Int32?.self, forKey: .logActivityTrace)
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
    if self.logVerbose != nil {try container.encode(self.logVerbose, forKey: .logVerbose)}
    if self.logProgress != nil {try container.encode(self.logProgress, forKey: .logProgress)}
    try container.encode(self.runbookType, forKey: .runbookType)
    try container.encode(self.draft as! RunbookDraftData, forKey: .draft)
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.logActivityTrace != nil {try container.encode(self.logActivityTrace, forKey: .logActivityTrace)}
  }
}

extension DataFactory {
  public static func createRunbookCreateOrUpdateDraftPropertiesProtocol(runbookType: RunbookTypeEnumEnum, draft: RunbookDraftProtocol) -> RunbookCreateOrUpdateDraftPropertiesProtocol {
    return RunbookCreateOrUpdateDraftPropertiesData(runbookType: runbookType, draft: draft)
  }
}
