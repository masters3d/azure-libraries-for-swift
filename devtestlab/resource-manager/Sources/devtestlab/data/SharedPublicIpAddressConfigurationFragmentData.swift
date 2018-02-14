// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SharedPublicIpAddressConfigurationFragmentData : SharedPublicIpAddressConfigurationFragmentProtocol {
    public var inboundNatRules: [InboundNatRuleFragmentProtocol?]?

        enum CodingKeys: String, CodingKey {case inboundNatRules = "inboundNatRules"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.inboundNatRules) {
        self.inboundNatRules = try container.decode([InboundNatRuleFragmentData?]?.self, forKey: .inboundNatRules)
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
    if self.inboundNatRules != nil {try container.encode(self.inboundNatRules as! [InboundNatRuleFragmentData?]?, forKey: .inboundNatRules)}
  }
}

extension DataFactory {
  public static func createSharedPublicIpAddressConfigurationFragmentProtocol() -> SharedPublicIpAddressConfigurationFragmentProtocol {
    return SharedPublicIpAddressConfigurationFragmentData()
  }
}
