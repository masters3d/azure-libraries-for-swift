// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// TopologyResourceProtocol is the network resource topology information for the given resource group.
public protocol TopologyResourceProtocol : Codable {
     var name: String? { get set }
     var id: String? { get set }
     var location: String? { get set }
     var associations: [TopologyAssociationProtocol?]? { get set }
}
