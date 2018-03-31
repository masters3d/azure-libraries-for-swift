// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServiceTypeHealthPolicyProtocol is represents the health policy used to evaluate the health of services belonging to
// a service type.
public protocol ServiceTypeHealthPolicyProtocol : Codable {
     var maxPercentUnhealthyPartitionsPerService: Int32? { get set }
     var maxPercentUnhealthyReplicasPerPartition: Int32? { get set }
     var maxPercentUnhealthyServices: Int32? { get set }
}
