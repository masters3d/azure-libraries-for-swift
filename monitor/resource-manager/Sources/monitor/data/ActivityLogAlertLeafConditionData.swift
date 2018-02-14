// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ActivityLogAlertLeafConditionData : ActivityLogAlertLeafConditionProtocol {
    public var field: String
    public var equals: String

        enum CodingKeys: String, CodingKey {case field = "field"
        case equals = "equals"
        }

  public init(field: String, equals: String)  {
    self.field = field
    self.equals = equals
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.field = try container.decode(String.self, forKey: .field)
    self.equals = try container.decode(String.self, forKey: .equals)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.field, forKey: .field)
    try container.encode(self.equals, forKey: .equals)
  }
}

extension DataFactory {
  public static func createActivityLogAlertLeafConditionProtocol(field: String, equals: String) -> ActivityLogAlertLeafConditionProtocol {
    return ActivityLogAlertLeafConditionData(field: field, equals: equals)
  }
}