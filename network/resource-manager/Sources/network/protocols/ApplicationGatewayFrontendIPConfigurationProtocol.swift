// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationGatewayFrontendIPConfigurationProtocol is frontend IP configuration of an application gateway.
public protocol ApplicationGatewayFrontendIPConfigurationProtocol : SubResourceProtocol {
     var properties: ApplicationGatewayFrontendIPConfigurationPropertiesFormatProtocol? { get set }
     var name: String? { get set }
     var etag: String? { get set }
     var type: String? { get set }
}
