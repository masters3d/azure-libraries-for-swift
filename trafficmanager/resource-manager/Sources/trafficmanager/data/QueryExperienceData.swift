// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct QueryExperienceData : QueryExperienceProtocol {
    public var endpointId: Int32
    public var queryCount: Int32
    public var latency: Double?

        enum CodingKeys: String, CodingKey {case endpointId = "endpointId"
        case queryCount = "queryCount"
        case latency = "latency"
        }

  public init(endpointId: Int32, queryCount: Int32)  {
    self.endpointId = endpointId
    self.queryCount = queryCount
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.endpointId = try container.decode(Int32.self, forKey: .endpointId)
    self.queryCount = try container.decode(Int32.self, forKey: .queryCount)
    if container.contains(.latency) {
        self.latency = try container.decode(Double?.self, forKey: .latency)
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
    try container.encode(self.endpointId, forKey: .endpointId)
    try container.encode(self.queryCount, forKey: .queryCount)
    if self.latency != nil {try container.encode(self.latency, forKey: .latency)}
  }
}

extension DataFactory {
  public static func createQueryExperienceProtocol(endpointId: Int32, queryCount: Int32) -> QueryExperienceProtocol {
    return QueryExperienceData(endpointId: endpointId, queryCount: queryCount)
  }
}
