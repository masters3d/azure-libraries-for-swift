// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BMSRefreshContainersQueryObjectProtocol is the query filters that can be used with the list containers API.
public protocol BMSRefreshContainersQueryObjectProtocol : Codable {
     var backupManagementType: BackupManagementTypeEnum? { get set }
}