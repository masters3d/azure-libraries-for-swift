// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// FailoverGroupReadWriteEndpointProtocol is read-write endpoint of the failover group instance.
public protocol FailoverGroupReadWriteEndpointProtocol : Codable {
     var failoverPolicy: ReadWriteEndpointFailoverPolicyEnum { get set }
     var failoverWithDataLossGracePeriodMinutes: Int32? { get set }
}
