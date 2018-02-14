// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SyncFullSchemaPropertiesProtocol is properties of the database full schema.
public protocol SyncFullSchemaPropertiesProtocol : Codable {
     var tables: [SyncFullSchemaTableProtocol?]? { get set }
     var lastUpdateTime: Date? { get set }
}
