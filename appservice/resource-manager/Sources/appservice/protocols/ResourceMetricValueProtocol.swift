// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResourceMetricValueProtocol is value of resource metric.
public protocol ResourceMetricValueProtocol : Codable {
     var timestamp: String? { get set }
     var average: Double? { get set }
     var minimum: Double? { get set }
     var maximum: Double? { get set }
     var total: Double? { get set }
     var count: Double? { get set }
     var properties: [ResourceMetricPropertyProtocol?]? { get set }
}
