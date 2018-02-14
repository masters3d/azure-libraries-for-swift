// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineScaleSetStorageProfileProtocol is describes a virtual machine scale set storage profile.
public protocol VirtualMachineScaleSetStorageProfileProtocol : Codable {
     var imageReference: ImageReferenceProtocol? { get set }
     var osDisk: VirtualMachineScaleSetOSDiskProtocol? { get set }
     var dataDisks: [VirtualMachineScaleSetDataDiskProtocol?]? { get set }
}