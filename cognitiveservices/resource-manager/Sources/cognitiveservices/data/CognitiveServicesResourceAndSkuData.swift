// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CognitiveServicesResourceAndSkuData : CognitiveServicesResourceAndSkuProtocol {
    public var resourceType: String?
    public var sku: SkuProtocol?

        enum CodingKeys: String, CodingKey {case resourceType = "resourceType"
        case sku = "sku"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.resourceType) {
        self.resourceType = try container.decode(String?.self, forKey: .resourceType)
    }
    if container.contains(.sku) {
        self.sku = try container.decode(SkuData?.self, forKey: .sku)
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
    if self.resourceType != nil {try container.encode(self.resourceType, forKey: .resourceType)}
    if self.sku != nil {try container.encode(self.sku as! SkuData?, forKey: .sku)}
  }
}

extension DataFactory {
  public static func createCognitiveServicesResourceAndSkuProtocol() -> CognitiveServicesResourceAndSkuProtocol {
    return CognitiveServicesResourceAndSkuData()
  }
}
