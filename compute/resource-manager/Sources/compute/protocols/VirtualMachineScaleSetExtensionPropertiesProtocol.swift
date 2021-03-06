// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineScaleSetExtensionPropertiesProtocol is describes the properties of a Virtual Machine Scale Set
// Extension.
public protocol VirtualMachineScaleSetExtensionPropertiesProtocol : Codable {
     var forceUpdateTag: String? { get set }
     var publisher: String? { get set }
     var type: String? { get set }
     var typeHandlerVersion: String? { get set }
     var autoUpgradeMinorVersion: Bool? { get set }
     var settings: [String: String?]? { get set }
     var protectedSettings: [String: String?]? { get set }
     var provisioningState: String? { get set }
}
