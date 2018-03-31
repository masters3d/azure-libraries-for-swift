// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VnetInfoPropertiesProtocol is vnetInfo resource specific properties
public protocol VnetInfoPropertiesProtocol : Codable {
     var vnetResourceId: String? { get set }
     var certThumbprint: String? { get set }
     var certBlob: [UInt8]? { get set }
     var routes: [VnetRouteProtocol?]? { get set }
     var resyncRequired: Bool? { get set }
     var dnsServers: String? { get set }
}
