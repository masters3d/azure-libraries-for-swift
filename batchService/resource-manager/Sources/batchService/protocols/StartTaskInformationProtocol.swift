// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// StartTaskInformationProtocol is
public protocol StartTaskInformationProtocol : Codable {
     var state: StartTaskStateEnum { get set }
     var startTime: Date { get set }
     var endTime: Date? { get set }
     var exitCode: Int32? { get set }
     var containerInfo: TaskContainerExecutionInformationProtocol? { get set }
     var failureInfo: TaskFailureInformationProtocol? { get set }
     var retryCount: Int32 { get set }
     var lastRetryTime: Date? { get set }
     var result: TaskExecutionResultEnum? { get set }
}
