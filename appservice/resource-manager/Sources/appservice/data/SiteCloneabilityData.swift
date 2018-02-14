// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SiteCloneabilityData : SiteCloneabilityProtocol {
    public var result: CloneAbilityResultEnum?
    public var blockingFeatures: [SiteCloneabilityCriterionProtocol?]?
    public var unsupportedFeatures: [SiteCloneabilityCriterionProtocol?]?
    public var blockingCharacteristics: [SiteCloneabilityCriterionProtocol?]?

        enum CodingKeys: String, CodingKey {case result = "result"
        case blockingFeatures = "blockingFeatures"
        case unsupportedFeatures = "unsupportedFeatures"
        case blockingCharacteristics = "blockingCharacteristics"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.result) {
        self.result = try container.decode(CloneAbilityResultEnum?.self, forKey: .result)
    }
    if container.contains(.blockingFeatures) {
        self.blockingFeatures = try container.decode([SiteCloneabilityCriterionData?]?.self, forKey: .blockingFeatures)
    }
    if container.contains(.unsupportedFeatures) {
        self.unsupportedFeatures = try container.decode([SiteCloneabilityCriterionData?]?.self, forKey: .unsupportedFeatures)
    }
    if container.contains(.blockingCharacteristics) {
        self.blockingCharacteristics = try container.decode([SiteCloneabilityCriterionData?]?.self, forKey: .blockingCharacteristics)
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
    if self.result != nil {try container.encode(self.result, forKey: .result)}
    if self.blockingFeatures != nil {try container.encode(self.blockingFeatures as! [SiteCloneabilityCriterionData?]?, forKey: .blockingFeatures)}
    if self.unsupportedFeatures != nil {try container.encode(self.unsupportedFeatures as! [SiteCloneabilityCriterionData?]?, forKey: .unsupportedFeatures)}
    if self.blockingCharacteristics != nil {try container.encode(self.blockingCharacteristics as! [SiteCloneabilityCriterionData?]?, forKey: .blockingCharacteristics)}
  }
}

extension DataFactory {
  public static func createSiteCloneabilityProtocol() -> SiteCloneabilityProtocol {
    return SiteCloneabilityData()
  }
}
