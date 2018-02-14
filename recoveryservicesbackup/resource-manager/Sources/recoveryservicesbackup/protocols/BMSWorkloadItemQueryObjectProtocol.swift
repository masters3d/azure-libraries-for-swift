// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BMSWorkloadItemQueryObjectProtocol is filters to list items that can be backed up.
public protocol BMSWorkloadItemQueryObjectProtocol : Codable {
     var backupManagementType: BackupManagementTypeEnum? { get set }
     var workloadItemType: WorkloadItemTypeEnum? { get set }
     var workloadType: WorkloadTypeEnum? { get set }
     var protectionStatus: ProtectionStatusEnum? { get set }
}