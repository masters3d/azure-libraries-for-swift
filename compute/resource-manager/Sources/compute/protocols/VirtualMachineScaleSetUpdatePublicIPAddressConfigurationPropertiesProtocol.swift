// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineScaleSetUpdatePublicIPAddressConfigurationPropertiesProtocol is describes a virtual machines scale set
// IP Configuration's PublicIPAddress configuration
public protocol VirtualMachineScaleSetUpdatePublicIPAddressConfigurationPropertiesProtocol : Codable {
     var idleTimeoutInMinutes: Int32? { get set }
     var dnsSettings: VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsProtocol? { get set }
}
