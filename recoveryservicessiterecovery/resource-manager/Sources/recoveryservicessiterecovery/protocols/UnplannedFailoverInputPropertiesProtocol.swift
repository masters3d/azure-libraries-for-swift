// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// UnplannedFailoverInputPropertiesProtocol is input definition for planned failover input properties.
public protocol UnplannedFailoverInputPropertiesProtocol : Codable {
     var failoverDirection: String? { get set }
     var sourceSiteOperations: String? { get set }
     var providerSpecificDetails: ProviderSpecificFailoverInputProtocol? { get set }
}
