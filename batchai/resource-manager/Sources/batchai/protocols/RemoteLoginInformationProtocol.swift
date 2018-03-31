// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RemoteLoginInformationProtocol is contains remote login details to SSH/RDP to a compute node in cluster.
public protocol RemoteLoginInformationProtocol : Codable {
     var nodeId: String { get set }
     var ipAddress: String { get set }
     var port: Double { get set }
}
