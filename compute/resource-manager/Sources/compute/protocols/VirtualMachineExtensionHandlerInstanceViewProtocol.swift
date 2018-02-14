// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineExtensionHandlerInstanceViewProtocol is the instance view of a virtual machine extension handler.
public protocol VirtualMachineExtensionHandlerInstanceViewProtocol : Codable {
     var type: String? { get set }
     var typeHandlerVersion: String? { get set }
     var status: InstanceViewStatusProtocol? { get set }
}
