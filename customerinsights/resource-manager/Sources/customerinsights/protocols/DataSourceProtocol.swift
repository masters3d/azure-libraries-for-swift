// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DataSourceProtocol is data Source is a way for us to know the source of instances. A single type can have data
// coming in from multiple places. In activities we use this to determine precedence rules.
public protocol DataSourceProtocol : Codable {
     var name: String? { get set }
     var dataSourceType: DataSourceTypeEnum? { get set }
     var status: StatusEnum? { get set }
     var id: Int32? { get set }
     var dataSourceReferenceId: String? { get set }
}
