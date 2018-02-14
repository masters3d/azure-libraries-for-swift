// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SoftwareUpdateConfigurationMachineRunProtocol is software update configuration machine run model.
public protocol SoftwareUpdateConfigurationMachineRunProtocol : Codable {
     var name: String? { get set }
     var id: String? { get set }
     var properties: UpdateConfigurationMachineRunPropertiesProtocol? { get set }
}
