// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NetworkProfileProtocol is specifies the network interfaces of the virtual machine.
public protocol NetworkProfileProtocol : Codable {
     var networkInterfaces: [NetworkInterfaceReferenceProtocol?]? { get set }
}
