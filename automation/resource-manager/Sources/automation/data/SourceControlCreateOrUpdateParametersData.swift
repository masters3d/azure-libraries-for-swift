// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SourceControlCreateOrUpdateParametersData : SourceControlCreateOrUpdateParametersProtocol {
    public var properties: SourceControlCreateOrUpdatePropertiesProtocol

        enum CodingKeys: String, CodingKey {case properties = "properties"
        }

  public init(properties: SourceControlCreateOrUpdatePropertiesProtocol)  {
    self.properties = properties
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.properties = try container.decode(SourceControlCreateOrUpdatePropertiesData.self, forKey: .properties)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.properties as! SourceControlCreateOrUpdatePropertiesData, forKey: .properties)
  }
}

extension DataFactory {
  public static func createSourceControlCreateOrUpdateParametersProtocol(properties: SourceControlCreateOrUpdatePropertiesProtocol) -> SourceControlCreateOrUpdateParametersProtocol {
    return SourceControlCreateOrUpdateParametersData(properties: properties)
  }
}
