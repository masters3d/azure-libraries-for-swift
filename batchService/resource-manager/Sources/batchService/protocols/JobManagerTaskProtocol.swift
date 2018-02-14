// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobManagerTaskProtocol is the Job Manager task is automatically started when the job is created. The Batch service
// tries to schedule the Job Manager task before any other tasks in the job. When shrinking a pool, the Batch service
// tries to preserve compute nodes where Job Manager tasks are running for as long as possible (that is, nodes running
// 'normal' tasks are removed before nodes running Job Manager tasks). When a Job Manager task fails and needs to be
// restarted, the system tries to schedule it at the highest priority. If there are no idle nodes available, the system
// may terminate one of the running tasks in the pool and return it to the queue in order to make room for the Job
// Manager task to restart. Note that a Job Manager task in one job does not have priority over tasks in other jobs.
// Across jobs, only job level priorities are observed. For example, if a Job Manager in a priority 0 job needs to be
// restarted, it will not displace tasks of a priority 1 job.
public protocol JobManagerTaskProtocol : Codable {
     var id: String { get set }
     var displayName: String? { get set }
     var commandLine: String { get set }
     var containerSettings: TaskContainerSettingsProtocol? { get set }
     var resourceFiles: [ResourceFileProtocol?]? { get set }
     var outputFiles: [OutputFileProtocol?]? { get set }
     var environmentSettings: [EnvironmentSettingProtocol?]? { get set }
     var constraints: TaskConstraintsProtocol? { get set }
     var killJobOnCompletion: Bool? { get set }
     var userIdentity: UserIdentityProtocol? { get set }
     var runExclusive: Bool? { get set }
     var applicationPackageReferences: [ApplicationPackageReferenceProtocol?]? { get set }
     var authenticationTokenSettings: AuthenticationTokenSettingsProtocol? { get set }
     var allowLowPriorityNode: Bool? { get set }
}
