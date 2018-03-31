// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ProtectionContainerMappingPropertiesData : ProtectionContainerMappingPropertiesProtocol {
    public var targetProtectionContainerId: String?
    public var targetProtectionContainerFriendlyName: String?
    public var providerSpecificDetails: ProtectionContainerMappingProviderSpecificDetailsProtocol?
    public var health: String?
    public var healthErrorDetails: [HealthErrorProtocol?]?
    public var policyId: String?
    public var state: String?
    public var sourceProtectionContainerFriendlyName: String?
    public var sourceFabricFriendlyName: String?
    public var targetFabricFriendlyName: String?
    public var policyFriendlyName: String?

        enum CodingKeys: String, CodingKey {case targetProtectionContainerId = "targetProtectionContainerId"
        case targetProtectionContainerFriendlyName = "targetProtectionContainerFriendlyName"
        case providerSpecificDetails = "providerSpecificDetails"
        case health = "health"
        case healthErrorDetails = "healthErrorDetails"
        case policyId = "policyId"
        case state = "state"
        case sourceProtectionContainerFriendlyName = "sourceProtectionContainerFriendlyName"
        case sourceFabricFriendlyName = "sourceFabricFriendlyName"
        case targetFabricFriendlyName = "targetFabricFriendlyName"
        case policyFriendlyName = "policyFriendlyName"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.targetProtectionContainerId) {
        self.targetProtectionContainerId = try container.decode(String?.self, forKey: .targetProtectionContainerId)
    }
    if container.contains(.targetProtectionContainerFriendlyName) {
        self.targetProtectionContainerFriendlyName = try container.decode(String?.self, forKey: .targetProtectionContainerFriendlyName)
    }
    if container.contains(.providerSpecificDetails) {
        self.providerSpecificDetails = try container.decode(ProtectionContainerMappingProviderSpecificDetailsData?.self, forKey: .providerSpecificDetails)
    }
    if container.contains(.health) {
        self.health = try container.decode(String?.self, forKey: .health)
    }
    if container.contains(.healthErrorDetails) {
        self.healthErrorDetails = try container.decode([HealthErrorData?]?.self, forKey: .healthErrorDetails)
    }
    if container.contains(.policyId) {
        self.policyId = try container.decode(String?.self, forKey: .policyId)
    }
    if container.contains(.state) {
        self.state = try container.decode(String?.self, forKey: .state)
    }
    if container.contains(.sourceProtectionContainerFriendlyName) {
        self.sourceProtectionContainerFriendlyName = try container.decode(String?.self, forKey: .sourceProtectionContainerFriendlyName)
    }
    if container.contains(.sourceFabricFriendlyName) {
        self.sourceFabricFriendlyName = try container.decode(String?.self, forKey: .sourceFabricFriendlyName)
    }
    if container.contains(.targetFabricFriendlyName) {
        self.targetFabricFriendlyName = try container.decode(String?.self, forKey: .targetFabricFriendlyName)
    }
    if container.contains(.policyFriendlyName) {
        self.policyFriendlyName = try container.decode(String?.self, forKey: .policyFriendlyName)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.targetProtectionContainerId != nil { try container.encode(self.targetProtectionContainerId, forKey: .targetProtectionContainerId) }
    if self.targetProtectionContainerFriendlyName != nil { try container.encode(self.targetProtectionContainerFriendlyName, forKey: .targetProtectionContainerFriendlyName) }
    if self.providerSpecificDetails != nil { try container.encode(self.providerSpecificDetails as! ProtectionContainerMappingProviderSpecificDetailsData?, forKey: .providerSpecificDetails) }
    if self.health != nil { try container.encode(self.health, forKey: .health) }
    if self.healthErrorDetails != nil { try container.encode(self.healthErrorDetails as! [HealthErrorData?]?, forKey: .healthErrorDetails) }
    if self.policyId != nil { try container.encode(self.policyId, forKey: .policyId) }
    if self.state != nil { try container.encode(self.state, forKey: .state) }
    if self.sourceProtectionContainerFriendlyName != nil { try container.encode(self.sourceProtectionContainerFriendlyName, forKey: .sourceProtectionContainerFriendlyName) }
    if self.sourceFabricFriendlyName != nil { try container.encode(self.sourceFabricFriendlyName, forKey: .sourceFabricFriendlyName) }
    if self.targetFabricFriendlyName != nil { try container.encode(self.targetFabricFriendlyName, forKey: .targetFabricFriendlyName) }
    if self.policyFriendlyName != nil { try container.encode(self.policyFriendlyName, forKey: .policyFriendlyName) }
  }
}

extension DataFactory {
  public static func createProtectionContainerMappingPropertiesProtocol() -> ProtectionContainerMappingPropertiesProtocol {
    return ProtectionContainerMappingPropertiesData()
  }
}
