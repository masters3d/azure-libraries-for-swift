// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ConnStringInfoProtocol is database connection string information.
public protocol ConnStringInfoProtocol : Codable {
     var name: String? { get set }
     var connectionString: String? { get set }
     var type: ConnectionStringTypeEnum? { get set }
}