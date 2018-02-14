// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationGatewayUrlPathMapPropertiesFormatProtocol is properties of UrlPathMap of the application gateway.
public protocol ApplicationGatewayUrlPathMapPropertiesFormatProtocol : Codable {
     var defaultBackendAddressPool: SubResourceProtocol? { get set }
     var defaultBackendHttpSettings: SubResourceProtocol? { get set }
     var defaultRedirectConfiguration: SubResourceProtocol? { get set }
     var pathRules: [ApplicationGatewayPathRuleProtocol?]? { get set }
     var provisioningState: String? { get set }
}
