// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// StartStreamingJobParametersProtocol is parameters supplied to the Start Streaming Job operation.
public protocol StartStreamingJobParametersProtocol : Codable {
     var outputStartMode: OutputStartModeEnum? { get set }
     var outputStartTime: Date? { get set }
}
