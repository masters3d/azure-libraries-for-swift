// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// StatefulServicePropertiesProtocol is the properties of a stateful service resource.
public protocol StatefulServicePropertiesProtocol : ServicePropertiesProtocol {
     var hasPersistedState: Bool? { get set }
     var targetReplicaSetSize: Int32? { get set }
     var minReplicaSetSize: Int32? { get set }
     var replicaRestartWaitDuration: Date? { get set }
     var quorumLossWaitDuration: Date? { get set }
     var standByReplicaKeepDuration: Date? { get set }
}
