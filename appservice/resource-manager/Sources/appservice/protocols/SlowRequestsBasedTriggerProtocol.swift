// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SlowRequestsBasedTriggerProtocol is trigger based on request execution time.
public protocol SlowRequestsBasedTriggerProtocol : Codable {
     var timeTaken: String? { get set }
     var count: Int32? { get set }
     var timeInterval: String? { get set }
}
