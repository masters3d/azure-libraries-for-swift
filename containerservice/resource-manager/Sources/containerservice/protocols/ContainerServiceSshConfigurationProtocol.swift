// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ContainerServiceSshConfigurationProtocol is SSH configuration for Linux-based VMs running on Azure.
public protocol ContainerServiceSshConfigurationProtocol : Codable {
     var publicKeys: [ContainerServiceSshPublicKeyProtocol] { get set }
}
