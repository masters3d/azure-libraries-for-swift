// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AnalysisServicesServersData : AnalysisServicesServersProtocol {
    public var value: [AnalysisServicesServerProtocol]

        enum CodingKeys: String, CodingKey {case value = "value"
        }

  public init(value: [AnalysisServicesServerProtocol]) {
    self.value = value
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.value = try container.decode([AnalysisServicesServerData].self, forKey: .value)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.value as! [AnalysisServicesServerData], forKey: .value)
  }
}

extension DataFactory {
  public static func createAnalysisServicesServersProtocol(value: [AnalysisServicesServerProtocol]) -> AnalysisServicesServersProtocol {
    return AnalysisServicesServersData(value: value)
  }
}
