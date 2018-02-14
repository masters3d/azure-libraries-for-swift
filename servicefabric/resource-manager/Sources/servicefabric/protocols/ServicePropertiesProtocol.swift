// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServicePropertiesProtocol is the service resource properties.
public protocol ServicePropertiesProtocol : ServicePropertiesBaseProtocol {
     var provisioningState: String? { get set }
     var serviceTypeName: String? { get set }
     var partitionDescription: PartitionSchemeDescriptionProtocol? { get set }
}
