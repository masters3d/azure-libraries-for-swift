// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BMSPOQueryObjectProtocol is filters to list items that can be backed up.
public protocol BMSPOQueryObjectProtocol : Codable {
     var backupManagementType: BackupManagementTypeEnum? { get set }
     var workloadType: WorkloadTypeEnum? { get set }
     var containerName: String? { get set }
     var status: String? { get set }
     var friendlyName: String? { get set }
}
