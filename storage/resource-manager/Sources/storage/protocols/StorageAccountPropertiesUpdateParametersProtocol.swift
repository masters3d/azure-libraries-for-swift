// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// StorageAccountPropertiesUpdateParametersProtocol is the parameters used when updating a storage account.
public protocol StorageAccountPropertiesUpdateParametersProtocol : Codable {
     var customDomain: CustomDomainProtocol? { get set }
     var encryption: EncryptionProtocol? { get set }
     var accessTier: AccessTierEnum? { get set }
     var enableHttpsTrafficOnly: Bool? { get set }
     var networkRuleSet: NetworkRuleSetProtocol? { get set }
}
