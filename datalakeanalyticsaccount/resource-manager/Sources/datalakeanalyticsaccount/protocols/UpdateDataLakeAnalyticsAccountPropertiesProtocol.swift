// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// UpdateDataLakeAnalyticsAccountPropertiesProtocol is the properties to update that are associated with an underlying
// Data Lake Analytics account.
public protocol UpdateDataLakeAnalyticsAccountPropertiesProtocol : Codable {
     var dataLakeStoreAccounts: [UpdateDataLakeStoreWithAccountParametersProtocol?]? { get set }
     var storageAccounts: [UpdateStorageAccountWithAccountParametersProtocol?]? { get set }
     var computePolicies: [UpdateComputePolicyWithAccountParametersProtocol?]? { get set }
     var firewallRules: [UpdateFirewallRuleWithAccountParametersProtocol?]? { get set }
     var firewallState: FirewallStateEnum? { get set }
     var firewallAllowAzureIps: FirewallAllowAzureIpsStateEnum? { get set }
     var newTier: TierTypeEnum? { get set }
     var maxJobCount: Int32? { get set }
     var maxDegreeOfParallelism: Int32? { get set }
     var maxDegreeOfParallelismPerJob: Int32? { get set }
     var minPriorityPerJob: Int32? { get set }
     var queryStoreRetention: Int32? { get set }
}