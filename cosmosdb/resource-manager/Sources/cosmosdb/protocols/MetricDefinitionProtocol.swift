// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MetricDefinitionProtocol is the definition of a metric.
public protocol MetricDefinitionProtocol : Codable {
     var metricAvailabilities: [MetricAvailabilityProtocol?]? { get set }
     var primaryAggregationType: PrimaryAggregationTypeEnum? { get set }
     var unit: UnitTypeEnum? { get set }
     var resourceUri: String? { get set }
     var name: MetricNameProtocol? { get set }
}
