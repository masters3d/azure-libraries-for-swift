// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualNetworkPropertiesFragmentData : VirtualNetworkPropertiesFragmentProtocol {
    public var allowedSubnets: [SubnetFragmentProtocol?]?
    public var description: String?
    public var externalProviderResourceId: String?
    public var externalSubnets: [ExternalSubnetFragmentProtocol?]?
    public var subnetOverrides: [SubnetOverrideFragmentProtocol?]?
    public var provisioningState: String?
    public var uniqueIdentifier: String?

        enum CodingKeys: String, CodingKey {case allowedSubnets = "allowedSubnets"
        case description = "description"
        case externalProviderResourceId = "externalProviderResourceId"
        case externalSubnets = "externalSubnets"
        case subnetOverrides = "subnetOverrides"
        case provisioningState = "provisioningState"
        case uniqueIdentifier = "uniqueIdentifier"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.allowedSubnets) {
        self.allowedSubnets = try container.decode([SubnetFragmentData?]?.self, forKey: .allowedSubnets)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.externalProviderResourceId) {
        self.externalProviderResourceId = try container.decode(String?.self, forKey: .externalProviderResourceId)
    }
    if container.contains(.externalSubnets) {
        self.externalSubnets = try container.decode([ExternalSubnetFragmentData?]?.self, forKey: .externalSubnets)
    }
    if container.contains(.subnetOverrides) {
        self.subnetOverrides = try container.decode([SubnetOverrideFragmentData?]?.self, forKey: .subnetOverrides)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.uniqueIdentifier) {
        self.uniqueIdentifier = try container.decode(String?.self, forKey: .uniqueIdentifier)
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
    if self.allowedSubnets != nil {try container.encode(self.allowedSubnets as! [SubnetFragmentData?]?, forKey: .allowedSubnets)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.externalProviderResourceId != nil {try container.encode(self.externalProviderResourceId, forKey: .externalProviderResourceId)}
    if self.externalSubnets != nil {try container.encode(self.externalSubnets as! [ExternalSubnetFragmentData?]?, forKey: .externalSubnets)}
    if self.subnetOverrides != nil {try container.encode(self.subnetOverrides as! [SubnetOverrideFragmentData?]?, forKey: .subnetOverrides)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.uniqueIdentifier != nil {try container.encode(self.uniqueIdentifier, forKey: .uniqueIdentifier)}
  }
}

extension DataFactory {
  public static func createVirtualNetworkPropertiesFragmentProtocol() -> VirtualNetworkPropertiesFragmentProtocol {
    return VirtualNetworkPropertiesFragmentData()
  }
}
