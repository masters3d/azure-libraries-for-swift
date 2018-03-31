// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InlineWorkflowTaskDetailsData : InlineWorkflowTaskDetailsProtocol, GroupTaskDetailsProtocol {
    public var childTasks: [ASRTaskProtocol?]?
    public var workflowIds: [String]?

        enum CodingKeys: String, CodingKey {case childTasks = "childTasks"
        case workflowIds = "workflowIds"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.childTasks) {
        self.childTasks = try container.decode([ASRTaskData?]?.self, forKey: .childTasks)
    }
    if container.contains(.workflowIds) {
        self.workflowIds = try container.decode([String]?.self, forKey: .workflowIds)
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
    if self.childTasks != nil { try container.encode(self.childTasks as! [ASRTaskData?]?, forKey: .childTasks) }
    if self.workflowIds != nil { try container.encode(self.workflowIds as! [String]?, forKey: .workflowIds) }
  }
}

extension DataFactory {
  public static func createInlineWorkflowTaskDetailsProtocol() -> InlineWorkflowTaskDetailsProtocol {
    return InlineWorkflowTaskDetailsData()
  }
}
