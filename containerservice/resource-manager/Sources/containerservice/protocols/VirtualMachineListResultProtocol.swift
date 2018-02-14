// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineListResultProtocol is the List Virtual Machine operation response.
public protocol VirtualMachineListResultProtocol : Codable {
     var value: [VirtualMachineProtocol] { get set }
     var _nextLink: String? { get set }
}