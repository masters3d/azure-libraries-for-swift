// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineScaleSetDataDiskProtocol is describes a virtual machine scale set data disk.
public protocol VirtualMachineScaleSetDataDiskProtocol : Codable {
     var name: String? { get set }
     var lun: Int32 { get set }
     var caching: CachingTypesEnum? { get set }
     var writeAcceleratorEnabled: Bool? { get set }
     var createOption: DiskCreateOptionTypesEnum { get set }
     var diskSizeGB: Int32? { get set }
     var managedDisk: VirtualMachineScaleSetManagedDiskParametersProtocol? { get set }
}
