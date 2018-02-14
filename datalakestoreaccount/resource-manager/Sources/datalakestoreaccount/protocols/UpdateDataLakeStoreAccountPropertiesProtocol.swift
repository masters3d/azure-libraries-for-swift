// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// UpdateDataLakeStoreAccountPropertiesProtocol is data Lake Store account properties information to be updated.
public protocol UpdateDataLakeStoreAccountPropertiesProtocol : Codable {
     var defaultGroup: String? { get set }
     var encryptionConfig: UpdateEncryptionConfigProtocol? { get set }
     var firewallRules: [UpdateFirewallRuleWithAccountParametersProtocol?]? { get set }
     var firewallState: FirewallStateEnum? { get set }
     var firewallAllowAzureIps: FirewallAllowAzureIpsStateEnum? { get set }
     var trustedIdProviders: [UpdateTrustedIdProviderWithAccountParametersProtocol?]? { get set }
     var trustedIdProviderState: TrustedIdProviderStateEnum? { get set }
     var newTier: TierTypeEnum? { get set }
}
