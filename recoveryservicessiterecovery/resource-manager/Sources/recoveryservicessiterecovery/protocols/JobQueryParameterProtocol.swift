// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobQueryParameterProtocol is query parameter to enumerate jobs.
public protocol JobQueryParameterProtocol : Codable {
     var startTime: String? { get set }
     var endTime: String? { get set }
     var fabricId: String? { get set }
     var affectedObjectTypes: [String]? { get set }
     var jobStatus: [String]? { get set }
}