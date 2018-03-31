// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationGatewayBackendHealthProtocol is list of ApplicationGatewayBackendHealthPool resources.
public protocol ApplicationGatewayBackendHealthProtocol : Codable {
     var backendAddressPools: [ApplicationGatewayBackendHealthPoolProtocol?]? { get set }
}
