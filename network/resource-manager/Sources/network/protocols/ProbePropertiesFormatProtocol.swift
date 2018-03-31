// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ProbePropertiesFormatProtocol is load balancer probe resource.
public protocol ProbePropertiesFormatProtocol : Codable {
     var loadBalancingRules: [SubResourceProtocol?]? { get set }
     var _protocol: ProbeProtocolEnum { get set }
     var port: Int32 { get set }
     var intervalInSeconds: Int32? { get set }
     var numberOfProbes: Int32? { get set }
     var requestPath: String? { get set }
     var provisioningState: String? { get set }
}
