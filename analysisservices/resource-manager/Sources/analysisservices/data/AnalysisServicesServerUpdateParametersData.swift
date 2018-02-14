// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AnalysisServicesServerUpdateParametersData : AnalysisServicesServerUpdateParametersProtocol {
    public var sku: ResourceSkuProtocol?
    public var tags: [String:String]?
    public var properties: AnalysisServicesServerMutablePropertiesProtocol?

        enum CodingKeys: String, CodingKey {case sku = "sku"
        case tags = "tags"
        case properties = "properties"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sku) {
        self.sku = try container.decode(ResourceSkuData?.self, forKey: .sku)
    }
    if container.contains(.tags) {
        self.tags = try container.decode([String:String]?.self, forKey: .tags)
    }
    if container.contains(.properties) {
        self.properties = try container.decode(AnalysisServicesServerMutablePropertiesData?.self, forKey: .properties)
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
    if self.sku != nil {try container.encode(self.sku as! ResourceSkuData?, forKey: .sku)}
    if self.tags != nil {try container.encode(self.tags, forKey: .tags)}
    if self.properties != nil {try container.encode(self.properties as! AnalysisServicesServerMutablePropertiesData?, forKey: .properties)}
  }
}

extension DataFactory {
  public static func createAnalysisServicesServerUpdateParametersProtocol() -> AnalysisServicesServerUpdateParametersProtocol {
    return AnalysisServicesServerUpdateParametersData()
  }
}
