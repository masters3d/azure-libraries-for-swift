// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineScaleSetIdentityProtocol is identity for the virtual machine scale set.
public protocol VirtualMachineScaleSetIdentityProtocol : Codable {
     var principalId: String? { get set }
     var tenantId: String? { get set }
     var type: ResourceIdentityTypeEnum? { get set }
     var identityIds: [String]? { get set }
}
