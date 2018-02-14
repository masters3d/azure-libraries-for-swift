// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobAddParameterProtocol is
public protocol JobAddParameterProtocol : Codable {
     var id: String { get set }
     var displayName: String? { get set }
     var priority: Int32? { get set }
     var constraints: JobConstraintsProtocol? { get set }
     var jobManagerTask: JobManagerTaskProtocol? { get set }
     var jobPreparationTask: JobPreparationTaskProtocol? { get set }
     var jobReleaseTask: JobReleaseTaskProtocol? { get set }
     var commonEnvironmentSettings: [EnvironmentSettingProtocol?]? { get set }
     var poolInfo: PoolInformationProtocol { get set }
     var onAllTasksComplete: OnAllTasksCompleteEnum? { get set }
     var onTaskFailure: OnTaskFailureEnum? { get set }
     var metadata: [MetadataItemProtocol?]? { get set }
     var usesTaskDependencies: Bool? { get set }
}
