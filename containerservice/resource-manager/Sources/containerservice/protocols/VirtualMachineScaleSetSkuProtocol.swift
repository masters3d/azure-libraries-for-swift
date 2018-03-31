// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineScaleSetSkuProtocol is describes an available virtual machine scale set sku.
public protocol VirtualMachineScaleSetSkuProtocol : Codable {
     var resourceType: String? { get set }
     var sku: SkuProtocol? { get set }
     var capacity: VirtualMachineScaleSetSkuCapacityProtocol? { get set }
}
