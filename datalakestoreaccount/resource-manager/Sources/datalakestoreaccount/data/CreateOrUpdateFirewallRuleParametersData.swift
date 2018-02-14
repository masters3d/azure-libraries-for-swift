// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CreateOrUpdateFirewallRuleParametersData : CreateOrUpdateFirewallRuleParametersProtocol {
    public var properties: CreateOrUpdateFirewallRulePropertiesProtocol

        enum CodingKeys: String, CodingKey {case properties = "properties"
        }

  public init(properties: CreateOrUpdateFirewallRulePropertiesProtocol)  {
    self.properties = properties
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.properties = try container.decode(CreateOrUpdateFirewallRulePropertiesData.self, forKey: .properties)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.properties as! CreateOrUpdateFirewallRulePropertiesData, forKey: .properties)
  }
}

extension DataFactory {
  public static func createCreateOrUpdateFirewallRuleParametersProtocol(properties: CreateOrUpdateFirewallRulePropertiesProtocol) -> CreateOrUpdateFirewallRuleParametersProtocol {
    return CreateOrUpdateFirewallRuleParametersData(properties: properties)
  }
}
