// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ConnectionMonitorSourceProtocol is describes the source of connection monitor.
public protocol ConnectionMonitorSourceProtocol : Codable {
     var resourceId: String { get set }
     var port: Int32? { get set }
}
