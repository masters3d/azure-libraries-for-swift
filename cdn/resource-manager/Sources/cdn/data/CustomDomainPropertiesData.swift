// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CustomDomainPropertiesData : CustomDomainPropertiesProtocol {
    public var hostName: String
    public var resourceState: CustomDomainResourceStateEnum?
    public var customHttpsProvisioningState: CustomHttpsProvisioningStateEnum?
    public var customHttpsProvisioningSubstate: CustomHttpsProvisioningSubstateEnum?
    public var validationData: String?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case hostName = "hostName"
        case resourceState = "resourceState"
        case customHttpsProvisioningState = "customHttpsProvisioningState"
        case customHttpsProvisioningSubstate = "customHttpsProvisioningSubstate"
        case validationData = "validationData"
        case provisioningState = "provisioningState"
        }

  public init(hostName: String)  {
    self.hostName = hostName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.hostName = try container.decode(String.self, forKey: .hostName)
    if container.contains(.resourceState) {
        self.resourceState = try container.decode(CustomDomainResourceStateEnum?.self, forKey: .resourceState)
    }
    if container.contains(.customHttpsProvisioningState) {
        self.customHttpsProvisioningState = try container.decode(CustomHttpsProvisioningStateEnum?.self, forKey: .customHttpsProvisioningState)
    }
    if container.contains(.customHttpsProvisioningSubstate) {
        self.customHttpsProvisioningSubstate = try container.decode(CustomHttpsProvisioningSubstateEnum?.self, forKey: .customHttpsProvisioningSubstate)
    }
    if container.contains(.validationData) {
        self.validationData = try container.decode(String?.self, forKey: .validationData)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
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
    try container.encode(self.hostName, forKey: .hostName)
    if self.resourceState != nil {try container.encode(self.resourceState, forKey: .resourceState)}
    if self.customHttpsProvisioningState != nil {try container.encode(self.customHttpsProvisioningState, forKey: .customHttpsProvisioningState)}
    if self.customHttpsProvisioningSubstate != nil {try container.encode(self.customHttpsProvisioningSubstate, forKey: .customHttpsProvisioningSubstate)}
    if self.validationData != nil {try container.encode(self.validationData, forKey: .validationData)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createCustomDomainPropertiesProtocol(hostName: String) -> CustomDomainPropertiesProtocol {
    return CustomDomainPropertiesData(hostName: hostName)
  }
}
