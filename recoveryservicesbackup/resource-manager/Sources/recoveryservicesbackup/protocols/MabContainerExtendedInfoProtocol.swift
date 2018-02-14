// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MabContainerExtendedInfoProtocol is additional information of the container.
public protocol MabContainerExtendedInfoProtocol : Codable {
     var lastRefreshedAt: Date? { get set }
     var backupItemType: BackupItemTypeEnum? { get set }
     var backupItems: [String]? { get set }
     var policyName: String? { get set }
     var lastBackupStatus: String? { get set }
}