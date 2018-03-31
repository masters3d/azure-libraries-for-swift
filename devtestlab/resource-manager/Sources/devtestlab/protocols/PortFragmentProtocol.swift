// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PortFragmentProtocol is properties of a network port.
public protocol PortFragmentProtocol : Codable {
     var transportProtocol: TransportProtocolEnum? { get set }
     var backendPort: Int32? { get set }
}
