// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AutoHealActionsData : AutoHealActionsProtocol {
    public var actionType: AutoHealActionTypeEnum?
    public var customAction: AutoHealCustomActionProtocol?
    public var minProcessExecutionTime: String?

        enum CodingKeys: String, CodingKey {case actionType = "actionType"
        case customAction = "customAction"
        case minProcessExecutionTime = "minProcessExecutionTime"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.actionType) {
        self.actionType = try container.decode(AutoHealActionTypeEnum?.self, forKey: .actionType)
    }
    if container.contains(.customAction) {
        self.customAction = try container.decode(AutoHealCustomActionData?.self, forKey: .customAction)
    }
    if container.contains(.minProcessExecutionTime) {
        self.minProcessExecutionTime = try container.decode(String?.self, forKey: .minProcessExecutionTime)
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
    if self.actionType != nil { try container.encode(self.actionType, forKey: .actionType) }
    if self.customAction != nil { try container.encode(self.customAction as! AutoHealCustomActionData?, forKey: .customAction) }
    if self.minProcessExecutionTime != nil { try container.encode(self.minProcessExecutionTime, forKey: .minProcessExecutionTime) }
  }
}

extension DataFactory {
  public static func createAutoHealActionsProtocol() -> AutoHealActionsProtocol {
    return AutoHealActionsData()
  }
}
