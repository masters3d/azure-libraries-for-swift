// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineTaskDetailsProtocol is this class represents the virtual machine task details.
public protocol VirtualMachineTaskDetailsProtocol : TaskTypeDetailsProtocol {
     var skippedReason: String? { get set }
     var skippedReasonString: String? { get set }
     var jobTask: JobEntityProtocol? { get set }
}
