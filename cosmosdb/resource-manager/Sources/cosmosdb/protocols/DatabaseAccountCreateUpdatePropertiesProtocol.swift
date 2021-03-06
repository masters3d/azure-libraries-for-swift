// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DatabaseAccountCreateUpdatePropertiesProtocol is properties to create and update Azure Cosmos DB database accounts.
public protocol DatabaseAccountCreateUpdatePropertiesProtocol : Codable {
     var consistencyPolicy: ConsistencyPolicyProtocol? { get set }
     var locations: [LocationProtocol] { get set }
     var databaseAccountOfferType: String { get set }
     var ipRangeFilter: String? { get set }
     var enableAutomaticFailover: Bool? { get set }
     var capabilities: [CapabilityProtocol?]? { get set }
}
