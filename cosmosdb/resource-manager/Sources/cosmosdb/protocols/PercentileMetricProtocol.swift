// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PercentileMetricProtocol is percentile Metric data
public protocol PercentileMetricProtocol : Codable {
     var startTime: Date? { get set }
     var endTime: Date? { get set }
     var timeGrain: String? { get set }
     var unit: UnitTypeEnum? { get set }
     var name: MetricNameProtocol? { get set }
     var metricValues: [PercentileMetricValueProtocol?]? { get set }
}
