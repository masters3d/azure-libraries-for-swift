// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineScaleSetInstanceViewStatusesSummaryProtocol is instance view statuses summary for virtual machines of
// a virtual machine scale set.
public protocol VirtualMachineScaleSetInstanceViewStatusesSummaryProtocol : Codable {
     var statusesSummary: [VirtualMachineStatusCodeCountProtocol?]? { get set }
}
