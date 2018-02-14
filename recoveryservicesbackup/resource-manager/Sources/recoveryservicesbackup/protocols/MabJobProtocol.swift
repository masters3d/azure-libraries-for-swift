// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MabJobProtocol is MAB workload-specific job.
public protocol MabJobProtocol : JobProtocol {
     var duration: String? { get set }
     var actionsInfo: [JobSupportedActionEnum?]? { get set }
     var mabServerName: String? { get set }
     var mabServerType: MabServerTypeEnum? { get set }
     var workloadType: WorkloadTypeEnum? { get set }
     var errorDetails: [MabErrorInfoProtocol?]? { get set }
     var extendedInfo: MabJobExtendedInfoProtocol? { get set }
}