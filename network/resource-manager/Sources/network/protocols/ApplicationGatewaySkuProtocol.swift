// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationGatewaySkuProtocol is SKU of an application gateway
public protocol ApplicationGatewaySkuProtocol : Codable {
     var name: ApplicationGatewaySkuNameEnum? { get set }
     var tier: ApplicationGatewayTierEnum? { get set }
     var capacity: Int32? { get set }
}
