// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SyncGroupSchemaProtocol is properties of sync group schema.
public protocol SyncGroupSchemaProtocol : Codable {
     var tables: [SyncGroupSchemaTableProtocol?]? { get set }
     var masterSyncMemberName: String? { get set }
}
