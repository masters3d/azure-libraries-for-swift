// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationGatewayHttpListenerPropertiesFormatProtocol is properties of HTTP listener of an application gateway.
public protocol ApplicationGatewayHttpListenerPropertiesFormatProtocol : Codable {
     var frontendIPConfiguration: SubResourceProtocol? { get set }
     var frontendPort: SubResourceProtocol? { get set }
     var _protocol: ApplicationGatewayProtocolEnum? { get set }
     var hostName: String? { get set }
     var sslCertificate: SubResourceProtocol? { get set }
     var requireServerNameIndication: Bool? { get set }
     var provisioningState: String? { get set }
}
