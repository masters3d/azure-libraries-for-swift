// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureReachabilityReportLatencyInfoProtocol is details on latency for a time series.
public protocol AzureReachabilityReportLatencyInfoProtocol : Codable {
     var timeStamp: Date? { get set }
     var score: Int32? { get set }
}
