// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IntegrationAccountSessionFilterData : IntegrationAccountSessionFilterProtocol {
    public var changedTime: Date

        enum CodingKeys: String, CodingKey {case changedTime = "changedTime"
        }

  public init(changedTime: Date)  {
    self.changedTime = changedTime
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
          self.changedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .changedTime)), format: .dateTime)!
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(DateConverter.toString(date: self.changedTime, format: .dateTime), forKey: .changedTime)
  }
}

extension DataFactory {
  public static func createIntegrationAccountSessionFilterProtocol(changedTime: Date) -> IntegrationAccountSessionFilterProtocol {
    return IntegrationAccountSessionFilterData(changedTime: changedTime)
  }
}
