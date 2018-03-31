// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EvaluatePoliciesResponseData : EvaluatePoliciesResponseProtocol {
    public var results: [PolicySetResultProtocol?]?

        enum CodingKeys: String, CodingKey {case results = "results"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.results) {
        self.results = try container.decode([PolicySetResultData?]?.self, forKey: .results)
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
    if self.results != nil {try container.encode(self.results as! [PolicySetResultData?]?, forKey: .results)}
  }
}

extension DataFactory {
  public static func createEvaluatePoliciesResponseProtocol() -> EvaluatePoliciesResponseProtocol {
    return EvaluatePoliciesResponseData()
  }
}
