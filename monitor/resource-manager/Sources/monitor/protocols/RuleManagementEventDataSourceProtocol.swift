// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RuleManagementEventDataSourceProtocol is a rule management event data source. The discriminator fields is always
// RuleManagementEventDataSource in this case.
public protocol RuleManagementEventDataSourceProtocol : RuleDataSourceProtocol {
     var eventName: String? { get set }
     var eventSource: String? { get set }
     var level: String? { get set }
     var operationName: String? { get set }
     var resourceGroupName: String? { get set }
     var resourceProviderName: String? { get set }
     var status: String? { get set }
     var subStatus: String? { get set }
     var claims: RuleManagementEventClaimsDataSourceProtocol? { get set }
}
