// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SubtaskInformationProtocol is
public protocol SubtaskInformationProtocol : Codable {
     var id: Int32? { get set }
     var nodeInfo: ComputeNodeInformationProtocol? { get set }
     var startTime: Date? { get set }
     var endTime: Date? { get set }
     var exitCode: Int32? { get set }
     var containerInfo: TaskContainerExecutionInformationProtocol? { get set }
     var failureInfo: TaskFailureInformationProtocol? { get set }
     var state: SubtaskStateEnum? { get set }
     var stateTransitionTime: Date? { get set }
     var previousState: SubtaskStateEnum? { get set }
     var previousStateTransitionTime: Date? { get set }
     var result: TaskExecutionResultEnum? { get set }
}
