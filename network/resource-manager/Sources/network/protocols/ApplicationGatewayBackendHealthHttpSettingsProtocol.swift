// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationGatewayBackendHealthHttpSettingsProtocol is application gateway BackendHealthHttp settings.
public protocol ApplicationGatewayBackendHealthHttpSettingsProtocol : Codable {
     var backendHttpSettings: ApplicationGatewayBackendHttpSettingsProtocol? { get set }
     var servers: [ApplicationGatewayBackendHealthServerProtocol?]? { get set }
}
