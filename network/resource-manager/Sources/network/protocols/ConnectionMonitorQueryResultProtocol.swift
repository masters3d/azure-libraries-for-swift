// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ConnectionMonitorQueryResultProtocol is list of connection states snaphots.
public protocol ConnectionMonitorQueryResultProtocol : Codable {
     var states: [ConnectionStateSnapshotProtocol?]? { get set }
}
