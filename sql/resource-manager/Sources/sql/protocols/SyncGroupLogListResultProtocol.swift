// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SyncGroupLogListResultProtocol is a list of sync group log properties.
public protocol SyncGroupLogListResultProtocol : Codable {
     var value: [SyncGroupLogPropertiesProtocol?]? { get set }
     var _nextLink: String? { get set }
}
