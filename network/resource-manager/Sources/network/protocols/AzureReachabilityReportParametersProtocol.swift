// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureReachabilityReportParametersProtocol is geographic and time constraints for Azure reachability report.
public protocol AzureReachabilityReportParametersProtocol : Codable {
     var providerLocation: AzureReachabilityReportLocationProtocol { get set }
     var providers: [String]? { get set }
     var azureLocations: [String]? { get set }
     var startTime: Date { get set }
     var endTime: Date { get set }
}
