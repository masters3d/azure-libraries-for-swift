// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SrvRecordProtocol is an SRV record.
public protocol SrvRecordProtocol : Codable {
     var priority: Int32? { get set }
     var weight: Int32? { get set }
     var port: Int32? { get set }
     var target: String? { get set }
}