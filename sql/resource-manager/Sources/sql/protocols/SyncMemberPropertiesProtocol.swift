// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SyncMemberPropertiesProtocol is properties of a sync member.
public protocol SyncMemberPropertiesProtocol : Codable {
     var databaseType: SyncMemberDbTypeEnum? { get set }
     var syncAgentId: String? { get set }
     var sqlServerDatabaseId: String? { get set }
     var serverName: String? { get set }
     var databaseName: String? { get set }
     var userName: String? { get set }
     var password: String? { get set }
     var syncDirection: SyncDirectionEnum? { get set }
     var syncState: SyncMemberStateEnum? { get set }
}
