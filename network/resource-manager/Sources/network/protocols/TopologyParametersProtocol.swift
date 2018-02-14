// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// TopologyParametersProtocol is parameters that define the representation of topology.
public protocol TopologyParametersProtocol : Codable {
     var targetResourceGroupName: String? { get set }
     var targetVirtualNetwork: SubResourceProtocol? { get set }
     var targetSubnet: SubResourceProtocol? { get set }
}
