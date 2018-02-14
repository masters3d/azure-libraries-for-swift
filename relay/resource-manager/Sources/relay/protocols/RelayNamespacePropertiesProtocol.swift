// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RelayNamespacePropertiesProtocol is properties of the namespace.
public protocol RelayNamespacePropertiesProtocol : Codable {
     var provisioningState: ProvisioningStateEnumEnum? { get set }
     var createdAt: Date? { get set }
     var updatedAt: Date? { get set }
     var serviceBusEndpoint: String? { get set }
     var metricId: String? { get set }
}
