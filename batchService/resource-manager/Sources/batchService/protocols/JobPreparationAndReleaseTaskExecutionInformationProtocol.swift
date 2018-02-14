// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobPreparationAndReleaseTaskExecutionInformationProtocol is
public protocol JobPreparationAndReleaseTaskExecutionInformationProtocol : Codable {
     var poolId: String? { get set }
     var nodeId: String? { get set }
     var nodeUrl: String? { get set }
     var jobPreparationTaskExecutionInfo: JobPreparationTaskExecutionInformationProtocol? { get set }
     var jobReleaseTaskExecutionInfo: JobReleaseTaskExecutionInformationProtocol? { get set }
}
