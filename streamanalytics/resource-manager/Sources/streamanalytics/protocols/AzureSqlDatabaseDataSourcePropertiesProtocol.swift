// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureSqlDatabaseDataSourcePropertiesProtocol is the properties that are associated with an Azure SQL database data
// source.
public protocol AzureSqlDatabaseDataSourcePropertiesProtocol : Codable {
     var server: String? { get set }
     var database: String? { get set }
     var user: String? { get set }
     var password: String? { get set }
     var table: String? { get set }
}
