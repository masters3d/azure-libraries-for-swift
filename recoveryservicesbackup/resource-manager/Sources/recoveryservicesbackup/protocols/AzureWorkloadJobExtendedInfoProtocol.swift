// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureWorkloadJobExtendedInfoProtocol is azure VM workload-specific additional information for job.
public protocol AzureWorkloadJobExtendedInfoProtocol : Codable {
     var tasksList: [AzureWorkloadJobTaskDetailsProtocol?]? { get set }
     var propertyBag: [String:String]? { get set }
     var dynamicErrorMessage: String? { get set }
}
