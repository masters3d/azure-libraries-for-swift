// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DiagnosticMetricSetProtocol is class representing Diagnostic Metric information
public protocol DiagnosticMetricSetProtocol : Codable {
     var name: String? { get set }
     var unit: String? { get set }
     var startTime: Date? { get set }
     var endTime: Date? { get set }
     var timeGrain: String? { get set }
     var values: [DiagnosticMetricSampleProtocol?]? { get set }
}
