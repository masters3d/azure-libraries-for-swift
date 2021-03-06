// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachinePropertiesProtocol is describes the properties of a Virtual Machine.
public protocol VirtualMachinePropertiesProtocol : Codable {
     var hardwareProfile: HardwareProfileProtocol? { get set }
     var storageProfile: StorageProfileProtocol? { get set }
     var osProfile: OSProfileProtocol? { get set }
     var networkProfile: NetworkProfileProtocol? { get set }
     var diagnosticsProfile: DiagnosticsProfileProtocol? { get set }
     var availabilitySet: SubResourceProtocol? { get set }
     var provisioningState: String? { get set }
     var instanceView: VirtualMachineInstanceViewProtocol? { get set }
     var licenseType: String? { get set }
     var vmId: String? { get set }
}
