// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SubnetFragmentData : SubnetFragmentProtocol {
    public var resourceId: String?
    public var labSubnetName: String?
    public var allowPublicIp: UsagePermissionTypeEnum?

        enum CodingKeys: String, CodingKey {case resourceId = "resourceId"
        case labSubnetName = "labSubnetName"
        case allowPublicIp = "allowPublicIp"
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
    if container.contains(.allowPublicIp) {
        self.allowPublicIp = try container.decode(UsagePermissionTypeEnum?.self, forKey: .allowPublicIp)
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
    if self.allowPublicIp != nil {try container.encode(self.allowPublicIp, forKey: .allowPublicIp)}
  }
}

extension DataFactory {
  public static func createSubnetFragmentProtocol() -> SubnetFragmentProtocol {
    return SubnetFragmentData()
  }
}
