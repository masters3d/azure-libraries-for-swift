// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SubnetOverrideData : SubnetOverrideProtocol {
    public var resourceId: String?
    public var labSubnetName: String?
    public var useInVmCreationPermission: UsagePermissionTypeEnum?
    public var usePublicIpAddressPermission: UsagePermissionTypeEnum?
    public var sharedPublicIpAddressConfiguration: SubnetSharedPublicIpAddressConfigurationProtocol?
    public var virtualNetworkPoolName: String?

        enum CodingKeys: String, CodingKey {case resourceId = "resourceId"
        case labSubnetName = "labSubnetName"
        case useInVmCreationPermission = "useInVmCreationPermission"
        case usePublicIpAddressPermission = "usePublicIpAddressPermission"
        case sharedPublicIpAddressConfiguration = "sharedPublicIpAddressConfiguration"
        case virtualNetworkPoolName = "virtualNetworkPoolName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.resourceId) {
        self.resourceId = try container.decode(String?.self, forKey: .resourceId)
    }
    if container.contains(.labSubnetName) {
        self.labSubnetName = try container.decode(String?.self, forKey: .labSubnetName)
    }
    if container.contains(.useInVmCreationPermission) {
        self.useInVmCreationPermission = try container.decode(UsagePermissionTypeEnum?.self, forKey: .useInVmCreationPermission)
    }
    if container.contains(.usePublicIpAddressPermission) {
        self.usePublicIpAddressPermission = try container.decode(UsagePermissionTypeEnum?.self, forKey: .usePublicIpAddressPermission)
    }
    if container.contains(.sharedPublicIpAddressConfiguration) {
        self.sharedPublicIpAddressConfiguration = try container.decode(SubnetSharedPublicIpAddressConfigurationData?.self, forKey: .sharedPublicIpAddressConfiguration)
    }
    if container.contains(.virtualNetworkPoolName) {
        self.virtualNetworkPoolName = try container.decode(String?.self, forKey: .virtualNetworkPoolName)
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
    if self.resourceId != nil {try container.encode(self.resourceId, forKey: .resourceId)}
    if self.labSubnetName != nil {try container.encode(self.labSubnetName, forKey: .labSubnetName)}
    if self.useInVmCreationPermission != nil {try container.encode(self.useInVmCreationPermission, forKey: .useInVmCreationPermission)}
    if self.usePublicIpAddressPermission != nil {try container.encode(self.usePublicIpAddressPermission, forKey: .usePublicIpAddressPermission)}
    if self.sharedPublicIpAddressConfiguration != nil {try container.encode(self.sharedPublicIpAddressConfiguration as! SubnetSharedPublicIpAddressConfigurationData?, forKey: .sharedPublicIpAddressConfiguration)}
    if self.virtualNetworkPoolName != nil {try container.encode(self.virtualNetworkPoolName, forKey: .virtualNetworkPoolName)}
  }
}

extension DataFactory {
  public static func createSubnetOverrideProtocol() -> SubnetOverrideProtocol {
    return SubnetOverrideData()
  }
}
