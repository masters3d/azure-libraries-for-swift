// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CurrentSpendData : CurrentSpendProtocol {
    public var amount: Decimal?
    public var unit: String?

        enum CodingKeys: String, CodingKey {case amount = "amount"
        case unit = "unit"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.amount) {
        self.amount = try container.decode(Decimal?.self, forKey: .amount)
    }
    if container.contains(.unit) {
        self.unit = try container.decode(String?.self, forKey: .unit)
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
    if self.amount != nil {try container.encode(self.amount, forKey: .amount)}
    if self.unit != nil {try container.encode(self.unit, forKey: .unit)}
  }
}

extension DataFactory {
  public static func createCurrentSpendProtocol() -> CurrentSpendProtocol {
    return CurrentSpendData()
  }
}
