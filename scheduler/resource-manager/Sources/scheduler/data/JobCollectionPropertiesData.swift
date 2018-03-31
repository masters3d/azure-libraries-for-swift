// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JobCollectionPropertiesData : JobCollectionPropertiesProtocol {
    public var sku: SkuProtocol?
    public var state: JobCollectionStateEnum?
    public var quota: JobCollectionQuotaProtocol?

        enum CodingKeys: String, CodingKey {case sku = "sku"
        case state = "state"
        case quota = "quota"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sku) {
        self.sku = try container.decode(SkuData?.self, forKey: .sku)
    }
    if container.contains(.state) {
        self.state = try container.decode(JobCollectionStateEnum?.self, forKey: .state)
    }
    if container.contains(.quota) {
        self.quota = try container.decode(JobCollectionQuotaData?.self, forKey: .quota)
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
    if self.sku != nil {try container.encode(self.sku as! SkuData?, forKey: .sku)}
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.quota != nil {try container.encode(self.quota as! JobCollectionQuotaData?, forKey: .quota)}
  }
}

extension DataFactory {
  public static func createJobCollectionPropertiesProtocol() -> JobCollectionPropertiesProtocol {
    return JobCollectionPropertiesData()
  }
}
