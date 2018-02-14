// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServicePropertiesBaseProtocol is the common service resource properties.
public protocol ServicePropertiesBaseProtocol : Codable {
     var placementConstraints: String? { get set }
     var correlationScheme: [ServiceCorrelationDescriptionProtocol?]? { get set }
     var serviceLoadMetrics: [ServiceLoadMetricDescriptionProtocol?]? { get set }
     var servicePlacementPolicies: [ServicePlacementPolicyDescriptionProtocol?]? { get set }
     var defaultMoveCost: DefaultMoveCostEnum? { get set }
}
