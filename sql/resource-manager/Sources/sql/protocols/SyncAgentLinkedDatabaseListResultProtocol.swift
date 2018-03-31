// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SyncAgentLinkedDatabaseListResultProtocol is a list of sync agent linked databases.
public protocol SyncAgentLinkedDatabaseListResultProtocol : Codable {
     var value: [SyncAgentLinkedDatabaseProtocol?]? { get set }
     var _nextLink: String? { get set }
}
