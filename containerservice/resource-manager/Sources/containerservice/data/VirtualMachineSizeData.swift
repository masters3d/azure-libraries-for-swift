// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineSizeData : VirtualMachineSizeProtocol {
    public var name: String?
    public var numberOfCores: Int32?
    public var osDiskSizeInMB: Int32?
    public var resourceDiskSizeInMB: Int32?
    public var memoryInMB: Int32?
    public var maxDataDiskCount: Int32?

        enum CodingKeys: String, CodingKey {case name = "name"
        case numberOfCores = "numberOfCores"
        case osDiskSizeInMB = "osDiskSizeInMB"
        case resourceDiskSizeInMB = "resourceDiskSizeInMB"
        case memoryInMB = "memoryInMB"
        case maxDataDiskCount = "maxDataDiskCount"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.numberOfCores) {
        self.numberOfCores = try container.decode(Int32?.self, forKey: .numberOfCores)
    }
    if container.contains(.osDiskSizeInMB) {
        self.osDiskSizeInMB = try container.decode(Int32?.self, forKey: .osDiskSizeInMB)
    }
    if container.contains(.resourceDiskSizeInMB) {
        self.resourceDiskSizeInMB = try container.decode(Int32?.self, forKey: .resourceDiskSizeInMB)
    }
    if container.contains(.memoryInMB) {
        self.memoryInMB = try container.decode(Int32?.self, forKey: .memoryInMB)
    }
    if container.contains(.maxDataDiskCount) {
        self.maxDataDiskCount = try container.decode(Int32?.self, forKey: .maxDataDiskCount)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.numberOfCores != nil {try container.encode(self.numberOfCores, forKey: .numberOfCores)}
    if self.osDiskSizeInMB != nil {try container.encode(self.osDiskSizeInMB, forKey: .osDiskSizeInMB)}
    if self.resourceDiskSizeInMB != nil {try container.encode(self.resourceDiskSizeInMB, forKey: .resourceDiskSizeInMB)}
    if self.memoryInMB != nil {try container.encode(self.memoryInMB, forKey: .memoryInMB)}
    if self.maxDataDiskCount != nil {try container.encode(self.maxDataDiskCount, forKey: .maxDataDiskCount)}
  }
}

extension DataFactory {
  public static func createVirtualMachineSizeProtocol() -> VirtualMachineSizeProtocol {
    return VirtualMachineSizeData()
  }
}
