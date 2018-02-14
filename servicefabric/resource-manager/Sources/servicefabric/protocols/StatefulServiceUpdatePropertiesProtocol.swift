// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// StatefulServiceUpdatePropertiesProtocol is the properties of a stateful service resource for patch operations.
public protocol StatefulServiceUpdatePropertiesProtocol : ServiceUpdatePropertiesProtocol {
     var targetReplicaSetSize: Int32? { get set }
     var minReplicaSetSize: Int32? { get set }
     var replicaRestartWaitDuration: Date? { get set }
     var quorumLossWaitDuration: Date? { get set }
     var standByReplicaKeepDuration: Date? { get set }
}
