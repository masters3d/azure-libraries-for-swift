// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PredictionTrainingResultsData : PredictionTrainingResultsProtocol {
    public var tenantId: String?
    public var scoreName: String?
    public var predictionDistribution: PredictionDistributionDefinitionProtocol?
    public var canonicalProfiles: [CanonicalProfileDefinitionProtocol?]?
    public var primaryProfileInstanceCount: Int64?

        enum CodingKeys: String, CodingKey {case tenantId = "tenantId"
        case scoreName = "scoreName"
        case predictionDistribution = "predictionDistribution"
        case canonicalProfiles = "canonicalProfiles"
        case primaryProfileInstanceCount = "primaryProfileInstanceCount"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.tenantId) {
        self.tenantId = try container.decode(String?.self, forKey: .tenantId)
    }
    if container.contains(.scoreName) {
        self.scoreName = try container.decode(String?.self, forKey: .scoreName)
    }
    if container.contains(.predictionDistribution) {
        self.predictionDistribution = try container.decode(PredictionDistributionDefinitionData?.self, forKey: .predictionDistribution)
    }
    if container.contains(.canonicalProfiles) {
        self.canonicalProfiles = try container.decode([CanonicalProfileDefinitionData?]?.self, forKey: .canonicalProfiles)
    }
    if container.contains(.primaryProfileInstanceCount) {
        self.primaryProfileInstanceCount = try container.decode(Int64?.self, forKey: .primaryProfileInstanceCount)
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
    if self.tenantId != nil { try container.encode(self.tenantId, forKey: .tenantId) }
    if self.scoreName != nil { try container.encode(self.scoreName, forKey: .scoreName) }
    if self.predictionDistribution != nil { try container.encode(self.predictionDistribution as! PredictionDistributionDefinitionData?, forKey: .predictionDistribution) }
    if self.canonicalProfiles != nil { try container.encode(self.canonicalProfiles as! [CanonicalProfileDefinitionData?]?, forKey: .canonicalProfiles) }
    if self.primaryProfileInstanceCount != nil { try container.encode(self.primaryProfileInstanceCount, forKey: .primaryProfileInstanceCount) }
  }
}

extension DataFactory {
  public static func createPredictionTrainingResultsProtocol() -> PredictionTrainingResultsProtocol {
    return PredictionTrainingResultsData()
  }
}
