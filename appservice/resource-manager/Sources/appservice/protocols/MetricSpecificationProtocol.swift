// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MetricSpecificationProtocol is definition of a single resource metric.
public protocol MetricSpecificationProtocol : Codable {
     var name: String? { get set }
     var displayName: String? { get set }
     var displayDescription: String? { get set }
     var unit: String? { get set }
     var aggregationType: String? { get set }
     var supportsInstanceLevelAggregation: Bool? { get set }
     var enableRegionalMdmAccount: Bool? { get set }
     var sourceMdmAccount: String? { get set }
     var sourceMdmNamespace: String? { get set }
     var metricFilterPattern: String? { get set }
     var fillGapWithZero: Bool? { get set }
     var isInternal: Bool? { get set }
     var dimensions: [DimensionProtocol?]? { get set }
     var category: String? { get set }
     var availabilities: [MetricAvailabilityProtocol?]? { get set }
}
