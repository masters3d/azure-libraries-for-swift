// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// StreamingJobListResultProtocol is object containing a list of streaming jobs.
public protocol StreamingJobListResultProtocol : Codable {
     var value: [StreamingJobProtocol?]? { get set }
     var _nextLink: String? { get set }
}
