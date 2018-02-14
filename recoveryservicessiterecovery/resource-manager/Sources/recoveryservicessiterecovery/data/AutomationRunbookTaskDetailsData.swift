// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AutomationRunbookTaskDetailsData : AutomationRunbookTaskDetailsProtocol, TaskTypeDetailsProtocol {
    public var name: String?
    public var cloudServiceName: String?
    public var subscriptionId: String?
    public var accountName: String?
    public var runbookId: String?
    public var runbookName: String?
    public var jobId: String?
    public var jobOutput: String?
    public var isPrimarySideScript: Bool?

        enum CodingKeys: String, CodingKey {case name = "name"
        case cloudServiceName = "cloudServiceName"
        case subscriptionId = "subscriptionId"
        case accountName = "accountName"
        case runbookId = "runbookId"
        case runbookName = "runbookName"
        case jobId = "jobId"
        case jobOutput = "jobOutput"
        case isPrimarySideScript = "isPrimarySideScript"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.cloudServiceName) {
        self.cloudServiceName = try container.decode(String?.self, forKey: .cloudServiceName)
    }
    if container.contains(.subscriptionId) {
        self.subscriptionId = try container.decode(String?.self, forKey: .subscriptionId)
    }
    if container.contains(.accountName) {
        self.accountName = try container.decode(String?.self, forKey: .accountName)
    }
    if container.contains(.runbookId) {
        self.runbookId = try container.decode(String?.self, forKey: .runbookId)
    }
    if container.contains(.runbookName) {
        self.runbookName = try container.decode(String?.self, forKey: .runbookName)
    }
    if container.contains(.jobId) {
        self.jobId = try container.decode(String?.self, forKey: .jobId)
    }
    if container.contains(.jobOutput) {
        self.jobOutput = try container.decode(String?.self, forKey: .jobOutput)
    }
    if container.contains(.isPrimarySideScript) {
        self.isPrimarySideScript = try container.decode(Bool?.self, forKey: .isPrimarySideScript)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.cloudServiceName != nil {try container.encode(self.cloudServiceName, forKey: .cloudServiceName)}
    if self.subscriptionId != nil {try container.encode(self.subscriptionId, forKey: .subscriptionId)}
    if self.accountName != nil {try container.encode(self.accountName, forKey: .accountName)}
    if self.runbookId != nil {try container.encode(self.runbookId, forKey: .runbookId)}
    if self.runbookName != nil {try container.encode(self.runbookName, forKey: .runbookName)}
    if self.jobId != nil {try container.encode(self.jobId, forKey: .jobId)}
    if self.jobOutput != nil {try container.encode(self.jobOutput, forKey: .jobOutput)}
    if self.isPrimarySideScript != nil {try container.encode(self.isPrimarySideScript, forKey: .isPrimarySideScript)}
  }
}

extension DataFactory {
  public static func createAutomationRunbookTaskDetailsProtocol() -> AutomationRunbookTaskDetailsProtocol {
    return AutomationRunbookTaskDetailsData()
  }
}
