// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RetryHistoryProtocol is the retry history.
public protocol RetryHistoryProtocol : Codable {
     var startTime: Date? { get set }
     var endTime: Date? { get set }
     var code: String? { get set }
     var clientRequestId: String? { get set }
     var serviceRequestId: String? { get set }
     var error: ErrorResponseProtocol? { get set }
}