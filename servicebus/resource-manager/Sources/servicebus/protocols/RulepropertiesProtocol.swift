// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RulepropertiesProtocol is description of Rule Resource.
public protocol RulepropertiesProtocol : Codable {
     var action: ActionProtocol? { get set }
     var filterType: FilterTypeEnum? { get set }
     var sqlFilter: SqlFilterProtocol? { get set }
     var correlationFilter: CorrelationFilterProtocol? { get set }
}
