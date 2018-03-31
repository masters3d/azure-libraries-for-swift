// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VnetRoutePropertiesProtocol is vnetRoute resource specific properties
public protocol VnetRoutePropertiesProtocol : Codable {
     var vnetRouteName: String? { get set }
     var startAddress: String? { get set }
     var endAddress: String? { get set }
     var routeType: RouteTypeEnum? { get set }
}
