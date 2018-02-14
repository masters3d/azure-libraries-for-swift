// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CaaRecordProtocol is a CAA record.
public protocol CaaRecordProtocol : Codable {
     var flags: Int32? { get set }
     var tag: String? { get set }
     var value: String? { get set }
}