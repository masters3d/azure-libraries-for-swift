// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct KpiExtractData : KpiExtractProtocol {
    public var extractName: String
    public var expression: String

        enum CodingKeys: String, CodingKey {case extractName = "extractName"
        case expression = "expression"
        }

  public init(extractName: String, expression: String)  {
    self.extractName = extractName
    self.expression = expression
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.extractName = try container.decode(String.self, forKey: .extractName)
    self.expression = try container.decode(String.self, forKey: .expression)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.extractName, forKey: .extractName)
    try container.encode(self.expression, forKey: .expression)
  }
}

extension DataFactory {
  public static func createKpiExtractProtocol(extractName: String, expression: String) -> KpiExtractProtocol {
    return KpiExtractData(extractName: extractName, expression: expression)
  }
}
