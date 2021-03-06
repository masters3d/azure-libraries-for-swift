// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineInstanceViewProtocol is the instance view of a virtual machine.
public protocol VirtualMachineInstanceViewProtocol : Codable {
     var platformUpdateDomain: Int32? { get set }
     var platformFaultDomain: Int32? { get set }
     var computerName: String? { get set }
     var osName: String? { get set }
     var osVersion: String? { get set }
     var rdpThumbPrint: String? { get set }
     var vmAgent: VirtualMachineAgentInstanceViewProtocol? { get set }
     var maintenanceRedeployStatus: MaintenanceRedeployStatusProtocol? { get set }
     var disks: [DiskInstanceViewProtocol?]? { get set }
     var extensions: [VirtualMachineExtensionInstanceViewProtocol?]? { get set }
     var bootDiagnostics: BootDiagnosticsInstanceViewProtocol? { get set }
     var statuses: [InstanceViewStatusProtocol?]? { get set }
}
