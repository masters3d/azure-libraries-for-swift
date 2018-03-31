// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IaaSVMContainerProtocol is iaaS VM workload-specific container.
public protocol IaaSVMContainerProtocol : ProtectionContainerProtocol {
     var virtualMachineId: String? { get set }
     var virtualMachineVersion: String? { get set }
     var resourceGroup: String? { get set }
}
