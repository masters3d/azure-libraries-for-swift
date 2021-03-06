// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ClusterUpgradeDeltaHealthPolicyProtocol is describes the delta health policies for the cluster upgrade.
public protocol ClusterUpgradeDeltaHealthPolicyProtocol : Codable {
     var maxPercentDeltaUnhealthyNodes: Int32 { get set }
     var maxPercentUpgradeDomainDeltaUnhealthyNodes: Int32 { get set }
     var maxPercentDeltaUnhealthyApplications: Int32 { get set }
}
