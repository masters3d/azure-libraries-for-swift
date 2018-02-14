// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// HyperVReplicaAzureFailbackProviderInputProtocol is hvrA provider specific input for failback.
public protocol HyperVReplicaAzureFailbackProviderInputProtocol : ProviderSpecificFailoverInputProtocol {
     var dataSyncOption: String? { get set }
     var recoveryVmCreationOption: String? { get set }
     var providerIdForAlternateRecovery: String? { get set }
}
