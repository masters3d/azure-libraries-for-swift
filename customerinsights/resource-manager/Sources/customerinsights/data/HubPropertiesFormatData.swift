// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HubPropertiesFormatData : HubPropertiesFormatProtocol {
    public var apiEndpoint: String?
    public var webEndpoint: String?
    public var provisioningState: String?
    public var tenantFeatures: Int32?
    public var hubBillingInfo: HubBillingInfoFormatProtocol?

        enum CodingKeys: String, CodingKey {case apiEndpoint = "apiEndpoint"
        case webEndpoint = "webEndpoint"
        case provisioningState = "provisioningState"
        case tenantFeatures = "tenantFeatures"
        case hubBillingInfo = "hubBillingInfo"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.apiEndpoint) {
        self.apiEndpoint = try container.decode(String?.self, forKey: .apiEndpoint)
    }
    if container.contains(.webEndpoint) {
        self.webEndpoint = try container.decode(String?.self, forKey: .webEndpoint)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.tenantFeatures) {
        self.tenantFeatures = try container.decode(Int32?.self, forKey: .tenantFeatures)
    }
    if container.contains(.hubBillingInfo) {
        self.hubBillingInfo = try container.decode(HubBillingInfoFormatData?.self, forKey: .hubBillingInfo)
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
    if self.apiEndpoint != nil {try container.encode(self.apiEndpoint, forKey: .apiEndpoint)}
    if self.webEndpoint != nil {try container.encode(self.webEndpoint, forKey: .webEndpoint)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.tenantFeatures != nil {try container.encode(self.tenantFeatures, forKey: .tenantFeatures)}
    if self.hubBillingInfo != nil {try container.encode(self.hubBillingInfo as! HubBillingInfoFormatData?, forKey: .hubBillingInfo)}
  }
}

extension DataFactory {
  public static func createHubPropertiesFormatProtocol() -> HubPropertiesFormatProtocol {
    return HubPropertiesFormatData()
  }
}
