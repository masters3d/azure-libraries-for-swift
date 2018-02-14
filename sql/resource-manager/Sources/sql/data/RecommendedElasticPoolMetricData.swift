// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RecommendedElasticPoolMetricData : RecommendedElasticPoolMetricProtocol {
    public var dateTime: Date?
    public var dtu: Double?
    public var sizeGB: Double?

        enum CodingKeys: String, CodingKey {case dateTime = "dateTime"
        case dtu = "dtu"
        case sizeGB = "sizeGB"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.dateTime) {
        self.dateTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .dateTime)), format: .dateTime)
    }
    if container.contains(.dtu) {
        self.dtu = try container.decode(Double?.self, forKey: .dtu)
    }
    if container.contains(.sizeGB) {
        self.sizeGB = try container.decode(Double?.self, forKey: .sizeGB)
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
    if self.dateTime != nil {
        try container.encode(DateConverter.toString(date: self.dateTime!, format: .dateTime), forKey: .dateTime)
    }
    if self.dtu != nil {try container.encode(self.dtu, forKey: .dtu)}
    if self.sizeGB != nil {try container.encode(self.sizeGB, forKey: .sizeGB)}
  }
}

extension DataFactory {
  public static func createRecommendedElasticPoolMetricProtocol() -> RecommendedElasticPoolMetricProtocol {
    return RecommendedElasticPoolMetricData()
  }
}
