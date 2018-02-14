// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetDataDiskData : VirtualMachineScaleSetDataDiskProtocol {
    public var name: String?
    public var lun: Int32
    public var caching: CachingTypesEnum?
    public var writeAcceleratorEnabled: Bool?
    public var createOption: DiskCreateOptionTypesEnum
    public var diskSizeGB: Int32?
    public var managedDisk: VirtualMachineScaleSetManagedDiskParametersProtocol?

        enum CodingKeys: String, CodingKey {case name = "name"
        case lun = "lun"
        case caching = "caching"
        case writeAcceleratorEnabled = "writeAcceleratorEnabled"
        case createOption = "createOption"
        case diskSizeGB = "diskSizeGB"
        case managedDisk = "managedDisk"
        }

  public init(lun: Int32, createOption: DiskCreateOptionTypesEnum)  {
    self.lun = lun
    self.createOption = createOption
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    self.lun = try container.decode(Int32.self, forKey: .lun)
    if container.contains(.caching) {
        self.caching = try container.decode(CachingTypesEnum?.self, forKey: .caching)
    }
    if container.contains(.writeAcceleratorEnabled) {
        self.writeAcceleratorEnabled = try container.decode(Bool?.self, forKey: .writeAcceleratorEnabled)
    }
    self.createOption = try container.decode(DiskCreateOptionTypesEnum.self, forKey: .createOption)
    if container.contains(.diskSizeGB) {
        self.diskSizeGB = try container.decode(Int32?.self, forKey: .diskSizeGB)
    }
    if container.contains(.managedDisk) {
        self.managedDisk = try container.decode(VirtualMachineScaleSetManagedDiskParametersData?.self, forKey: .managedDisk)
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
    try container.encode(self.lun, forKey: .lun)
    if self.caching != nil {try container.encode(self.caching, forKey: .caching)}
    if self.writeAcceleratorEnabled != nil {try container.encode(self.writeAcceleratorEnabled, forKey: .writeAcceleratorEnabled)}
    try container.encode(self.createOption, forKey: .createOption)
    if self.diskSizeGB != nil {try container.encode(self.diskSizeGB, forKey: .diskSizeGB)}
    if self.managedDisk != nil {try container.encode(self.managedDisk as! VirtualMachineScaleSetManagedDiskParametersData?, forKey: .managedDisk)}
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetDataDiskProtocol(lun: Int32, createOption: DiskCreateOptionTypesEnum) -> VirtualMachineScaleSetDataDiskProtocol {
    return VirtualMachineScaleSetDataDiskData(lun: lun, createOption: createOption)
  }
}
