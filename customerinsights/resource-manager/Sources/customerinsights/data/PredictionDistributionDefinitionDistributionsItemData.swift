// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PredictionDistributionDefinitionDistributionsItemData : PredictionDistributionDefinitionDistributionsItemProtocol {
    public var scoreThreshold: Int32?
    public var positives: Int64?
    public var negatives: Int64?
    public var positivesAboveThreshold: Int64?
    public var negativesAboveThreshold: Int64?

        enum CodingKeys: String, CodingKey {case scoreThreshold = "scoreThreshold"
        case positives = "positives"
        case negatives = "negatives"
        case positivesAboveThreshold = "positivesAboveThreshold"
        case negativesAboveThreshold = "negativesAboveThreshold"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.scoreThreshold) {
        self.scoreThreshold = try container.decode(Int32?.self, forKey: .scoreThreshold)
    }
    if container.contains(.positives) {
        self.positives = try container.decode(Int64?.self, forKey: .positives)
    }
    if container.contains(.negatives) {
        self.negatives = try container.decode(Int64?.self, forKey: .negatives)
    }
    if container.contains(.positivesAboveThreshold) {
        self.positivesAboveThreshold = try container.decode(Int64?.self, forKey: .positivesAboveThreshold)
    }
    if container.contains(.negativesAboveThreshold) {
        self.negativesAboveThreshold = try container.decode(Int64?.self, forKey: .negativesAboveThreshold)
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
    if self.scoreThreshold != nil {try container.encode(self.scoreThreshold, forKey: .scoreThreshold)}
    if self.positives != nil {try container.encode(self.positives, forKey: .positives)}
    if self.negatives != nil {try container.encode(self.negatives, forKey: .negatives)}
    if self.positivesAboveThreshold != nil {try container.encode(self.positivesAboveThreshold, forKey: .positivesAboveThreshold)}
    if self.negativesAboveThreshold != nil {try container.encode(self.negativesAboveThreshold, forKey: .negativesAboveThreshold)}
  }
}

extension DataFactory {
  public static func createPredictionDistributionDefinitionDistributionsItemProtocol() -> PredictionDistributionDefinitionDistributionsItemProtocol {
    return PredictionDistributionDefinitionDistributionsItemData()
  }
}
