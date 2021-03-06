// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DisableProtectionInputPropertiesProtocol is disable protection input properties.
public protocol DisableProtectionInputPropertiesProtocol : Codable {
     var disableProtectionReason: DisableProtectionReasonEnum? { get set }
     var replicationProviderInput: DisableProtectionProviderSpecificInputProtocol? { get set }
}
