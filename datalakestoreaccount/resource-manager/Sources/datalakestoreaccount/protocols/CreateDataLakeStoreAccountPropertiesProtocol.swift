// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CreateDataLakeStoreAccountPropertiesProtocol is
public protocol CreateDataLakeStoreAccountPropertiesProtocol : Codable {
     var defaultGroup: String? { get set }
     var encryptionConfig: EncryptionConfigProtocol? { get set }
     var encryptionState: EncryptionStateEnum? { get set }
     var firewallRules: [CreateFirewallRuleWithAccountParametersProtocol?]? { get set }
     var firewallState: FirewallStateEnum? { get set }
     var firewallAllowAzureIps: FirewallAllowAzureIpsStateEnum? { get set }
     var trustedIdProviders: [CreateTrustedIdProviderWithAccountParametersProtocol?]? { get set }
     var trustedIdProviderState: TrustedIdProviderStateEnum? { get set }
     var newTier: TierTypeEnum? { get set }
}
