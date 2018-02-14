// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RoutePropertiesProtocol is the properties of a routing rule that your IoT hub uses to route messages to endpoints.
public protocol RoutePropertiesProtocol : Codable {
     var name: String { get set }
     var source: RoutingSourceEnum { get set }
     var condition: String? { get set }
     var endpointNames: [String] { get set }
     var isEnabled: Bool { get set }
}
