// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PlanData : PlanProtocol {
    public var name: String?
    public var publisher: String?
    public var product: String?
    public var promotionCode: String?

        enum CodingKeys: String, CodingKey {case name = "name"
        case publisher = "publisher"
        case product = "product"
        case promotionCode = "promotionCode"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.publisher) {
        self.publisher = try container.decode(String?.self, forKey: .publisher)
    }
    if container.contains(.product) {
        self.product = try container.decode(String?.self, forKey: .product)
    }
    if container.contains(.promotionCode) {
        self.promotionCode = try container.decode(String?.self, forKey: .promotionCode)
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
    if self.publisher != nil {try container.encode(self.publisher, forKey: .publisher)}
    if self.product != nil {try container.encode(self.product, forKey: .product)}
    if self.promotionCode != nil {try container.encode(self.promotionCode, forKey: .promotionCode)}
  }
}

extension DataFactory {
  public static func createPlanProtocol() -> PlanProtocol {
    return PlanData()
  }
}
