// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineScaleSetVMListResultProtocol is the List Virtual Machine Scale Set VMs operation response.
public protocol VirtualMachineScaleSetVMListResultProtocol : Codable {
     var value: [VirtualMachineScaleSetVMProtocol] { get set }
     var _nextLink: String? { get set }
}
