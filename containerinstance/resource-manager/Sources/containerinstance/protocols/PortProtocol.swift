// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PortProtocol is the port exposed on the container group.
public protocol PortProtocol : Codable {
     var _protocol: ContainerGroupNetworkProtocolEnum? { get set }
     var port: Int32 { get set }
}
