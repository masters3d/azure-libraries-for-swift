// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OperationStatusJobsExtendedInfoProtocol is operation status extended info for list of jobs.
public protocol OperationStatusJobsExtendedInfoProtocol : OperationStatusExtendedInfoProtocol {
     var jobIds: [String]? { get set }
     var failedJobsError: [String:String]? { get set }
}
