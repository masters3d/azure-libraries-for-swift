// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetUpdateOSDiskData : VirtualMachineScaleSetUpdateOSDiskProtocol {
    public var caching: CachingTypesEnum?
    public var writeAcceleratorEnabled: Bool?
    public var image: VirtualHardDiskProtocol?
    public var vhdContainers: [String]?
    public var managedDisk: VirtualMachineScaleSetManagedDiskParametersProtocol?

        enum CodingKeys: String, CodingKey {case caching = "caching"
        case writeAcceleratorEnabled = "writeAcceleratorEnabled"
        case image = "image"
        case vhdContainers = "vhdContainers"
        case managedDisk = "managedDisk"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.caching) {
        self.caching = try container.decode(CachingTypesEnum?.self, forKey: .caching)
    }
    if container.contains(.writeAcceleratorEnabled) {
        self.writeAcceleratorEnabled = try container.decode(Bool?.self, forKey: .writeAcceleratorEnabled)
    }
    if container.contains(.image) {
        self.image = try container.decode(VirtualHardDiskData?.self, forKey: .image)
    }
    if container.contains(.vhdContainers) {
        self.vhdContainers = try container.decode([String]?.self, forKey: .vhdContainers)
    }
    if container.contains(.managedDisk) {
        self.managedDisk = try container.decode(VirtualMachineScaleSetManagedDiskParametersData?.self, forKey: .managedDisk)
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
    if self.caching != nil { try container.encode(self.caching, forKey: .caching) }
    if self.writeAcceleratorEnabled != nil { try container.encode(self.writeAcceleratorEnabled, forKey: .writeAcceleratorEnabled) }
    if self.image != nil { try container.encode(self.image as! VirtualHardDiskData?, forKey: .image) }
    if self.vhdContainers != nil { try container.encode(self.vhdContainers as! [String]?, forKey: .vhdContainers) }
    if self.managedDisk != nil { try container.encode(self.managedDisk as! VirtualMachineScaleSetManagedDiskParametersData?, forKey: .managedDisk) }
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetUpdateOSDiskProtocol() -> VirtualMachineScaleSetUpdateOSDiskProtocol {
    return VirtualMachineScaleSetUpdateOSDiskData()
  }
}
