// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// GenericProtectionPolicyProtocol is azure VM (Mercury) workload-specific backup policy.
public protocol GenericProtectionPolicyProtocol : ProtectionPolicyProtocol {
     var subProtectionPolicy: [SubProtectionPolicyProtocol?]? { get set }
     var timeZone: String? { get set }
     var fabricName: String? { get set }
}
