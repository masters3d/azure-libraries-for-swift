// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SqlRuleActionData : SqlRuleActionProtocol, ActionProtocol {
    public var sqlExpression: String?
    public var compatibilityLevel: Int32?
    public var requiresPreprocessing: Bool?

        enum CodingKeys: String, CodingKey {case sqlExpression = "sqlExpression"
        case compatibilityLevel = "compatibilityLevel"
        case requiresPreprocessing = "requiresPreprocessing"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sqlExpression) {
        self.sqlExpression = try container.decode(String?.self, forKey: .sqlExpression)
    }
    if container.contains(.compatibilityLevel) {
        self.compatibilityLevel = try container.decode(Int32?.self, forKey: .compatibilityLevel)
    }
    if container.contains(.requiresPreprocessing) {
        self.requiresPreprocessing = try container.decode(Bool?.self, forKey: .requiresPreprocessing)
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
    if self.sqlExpression != nil { try container.encode(self.sqlExpression, forKey: .sqlExpression) }
    if self.compatibilityLevel != nil { try container.encode(self.compatibilityLevel, forKey: .compatibilityLevel) }
    if self.requiresPreprocessing != nil { try container.encode(self.requiresPreprocessing, forKey: .requiresPreprocessing) }
  }
}

extension DataFactory {
  public static func createSqlRuleActionProtocol() -> SqlRuleActionProtocol {
    return SqlRuleActionData()
  }
}
