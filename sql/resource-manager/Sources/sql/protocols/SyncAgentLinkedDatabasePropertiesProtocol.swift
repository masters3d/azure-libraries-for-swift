// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SyncAgentLinkedDatabasePropertiesProtocol is properties of an Azure SQL Database sync agent linked database.
public protocol SyncAgentLinkedDatabasePropertiesProtocol : Codable {
     var databaseType: SyncMemberDbTypeEnum? { get set }
     var databaseId: String? { get set }
     var description: String? { get set }
     var serverName: String? { get set }
     var databaseName: String? { get set }
     var userName: String? { get set }
}
