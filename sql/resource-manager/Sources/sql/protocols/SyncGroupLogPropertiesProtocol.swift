// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SyncGroupLogPropertiesProtocol is properties of an Azure SQL Database sync group log.
public protocol SyncGroupLogPropertiesProtocol : Codable {
     var timestamp: Date? { get set }
     var type: SyncGroupLogTypeEnum? { get set }
     var source: String? { get set }
     var details: String? { get set }
     var tracingId: String? { get set }
     var operationStatus: String? { get set }
}
