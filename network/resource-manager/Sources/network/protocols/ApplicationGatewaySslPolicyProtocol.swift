// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationGatewaySslPolicyProtocol is application Gateway Ssl policy.
public protocol ApplicationGatewaySslPolicyProtocol : Codable {
     var disabledSslProtocols: [ApplicationGatewaySslProtocolEnum?]? { get set }
     var policyType: ApplicationGatewaySslPolicyTypeEnum? { get set }
     var policyName: ApplicationGatewaySslPolicyNameEnum? { get set }
     var cipherSuites: [ApplicationGatewaySslCipherSuiteEnum?]? { get set }
     var minProtocolVersion: ApplicationGatewaySslProtocolEnum? { get set }
}