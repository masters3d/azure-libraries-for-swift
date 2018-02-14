// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SourceControlSyncJobByIdPropertiesProtocol is definition of source control sync job properties.
public protocol SourceControlSyncJobByIdPropertiesProtocol : Codable {
     var sourceControlSyncJobId: String? { get set }
     var creationTime: Date? { get set }
     var provisioningState: ProvisioningStateEnum? { get set }
     var startTime: Date? { get set }
     var endTime: Date? { get set }
     var startedBy: String? { get set }
     var errors: SourceControlSyncJobByIdErrorsProtocol? { get set }
}
