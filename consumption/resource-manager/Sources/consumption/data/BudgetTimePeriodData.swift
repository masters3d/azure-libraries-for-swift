// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BudgetTimePeriodData : BudgetTimePeriodProtocol {
    public var startDate: Date
    public var endDate: Date?

        enum CodingKeys: String, CodingKey {case startDate = "startDate"
        case endDate = "endDate"
        }

  public init(startDate: Date) {
    self.startDate = startDate
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
          self.startDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startDate)), format: .dateTime)!
    if container.contains(.endDate) {
        self.endDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endDate)), format: .dateTime)
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
    try container.encode(DateConverter.toString(date: self.startDate, format: .dateTime), forKey: .startDate)
    if self.endDate != nil {
        try container.encode(DateConverter.toString(date: self.endDate!, format: .dateTime), forKey: .endDate)
    }
  }
}

extension DataFactory {
  public static func createBudgetTimePeriodProtocol(startDate: Date) -> BudgetTimePeriodProtocol {
    return BudgetTimePeriodData(startDate: startDate)
  }
}
