// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MeterDetailsData : MeterDetailsProtocol {
    public var meterName: String?
    public var meterCategory: String?
    public var meterSubCategory: String?
    public var unit: String?
    public var meterLocation: String?
    public var totalIncludedQuantity: Decimal?
    public var pretaxStandardRate: Decimal?

        enum CodingKeys: String, CodingKey {case meterName = "meterName"
        case meterCategory = "meterCategory"
        case meterSubCategory = "meterSubCategory"
        case unit = "unit"
        case meterLocation = "meterLocation"
        case totalIncludedQuantity = "totalIncludedQuantity"
        case pretaxStandardRate = "pretaxStandardRate"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.meterName) {
        self.meterName = try container.decode(String?.self, forKey: .meterName)
    }
    if container.contains(.meterCategory) {
        self.meterCategory = try container.decode(String?.self, forKey: .meterCategory)
    }
    if container.contains(.meterSubCategory) {
        self.meterSubCategory = try container.decode(String?.self, forKey: .meterSubCategory)
    }
    if container.contains(.unit) {
        self.unit = try container.decode(String?.self, forKey: .unit)
    }
    if container.contains(.meterLocation) {
        self.meterLocation = try container.decode(String?.self, forKey: .meterLocation)
    }
    if container.contains(.totalIncludedQuantity) {
        self.totalIncludedQuantity = try container.decode(Decimal?.self, forKey: .totalIncludedQuantity)
    }
    if container.contains(.pretaxStandardRate) {
        self.pretaxStandardRate = try container.decode(Decimal?.self, forKey: .pretaxStandardRate)
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
    if self.meterName != nil { try container.encode(self.meterName, forKey: .meterName) }
    if self.meterCategory != nil { try container.encode(self.meterCategory, forKey: .meterCategory) }
    if self.meterSubCategory != nil { try container.encode(self.meterSubCategory, forKey: .meterSubCategory) }
    if self.unit != nil { try container.encode(self.unit, forKey: .unit) }
    if self.meterLocation != nil { try container.encode(self.meterLocation, forKey: .meterLocation) }
    if self.totalIncludedQuantity != nil { try container.encode(self.totalIncludedQuantity, forKey: .totalIncludedQuantity) }
    if self.pretaxStandardRate != nil { try container.encode(self.pretaxStandardRate, forKey: .pretaxStandardRate) }
  }
}

extension DataFactory {
  public static func createMeterDetailsProtocol() -> MeterDetailsProtocol {
    return MeterDetailsData()
  }
}
